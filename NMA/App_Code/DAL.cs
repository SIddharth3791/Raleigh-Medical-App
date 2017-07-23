using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
    SqlConnection cn=new SqlConnection();
    SqlCommand cmd;
    SqlDataAdapter da;
	public DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    void openconnection()
    {
        if (cn.State == System.Data.ConnectionState.Closed)
        {
            //cn.ConnectionString = "Server=10.7.104.23;Database=NMA;User ID=sa;Password='sa@123';Trusted_Connection=false;";
            cn.ConnectionString = "Server=MAITHILI-PC\\SQLEXPRESS;Database=NMA;Integrated Security=true;";
            cn.Open();
        }
    }

    void closeconnection()
    {
        if (cn.State == System.Data.ConnectionState.Open)
        {
            cn.Close();
        }
    }

    public string  getNewPatientNmber()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT MAX(PatientNo) FROM Patient", cn);
        cmd.CommandType = CommandType.Text;
        string patientNumber = cmd.ExecuteScalar().ToString();
        closeconnection();
        if (string.IsNullOrEmpty(patientNumber))
        {
            patientNumber = "1";
        }
        else
        {
            patientNumber = (Convert.ToInt32(patientNumber) + 1).ToString();
            
        }
        
        //patientNumber += DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        return patientNumber;        
        
    }

    public Int32 getNewPatientNmberWithoutTime()
    {
        openconnection();
        DataSet ds = new DataSet();
        SqlCommand cmd1;
        cmd1 = new SqlCommand("SELECT MAX(ID) FROM PATIENT", cn);
        cmd1.CommandType = CommandType.Text;
        string patientNumber = cmd1.ExecuteScalar().ToString();

        //closeconnection(); 
        return Convert.ToInt32(patientNumber);

    }

    public System.Data.DataSet getDoctors()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT DISTINCT NAME FROM Physicianschedule WHERE ACTIVE=@active", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@active", 1);        
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public System.Data.DataSet getDoctorSchedule(string name)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT EmpId as CODE,NAME,TYPE as CATEGORY,DAY,DATE,TIMEFROM AS [FROM],TIMETO AS [TO],SPECIALITY FROM Physicianschedule WHERE NAME=@NAME AND AVAILABILITY=@CHECK", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@NAME", name);
        cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;   
    }

    public System.Data.DataSet getPatientInfo(string num)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT * from Patient where PatientNo = @Patientno", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Patientno", num);
        //cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public System.Data.DataSet getscheduleperday(string num)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT Name, Type, Day, Timefrom as HH, Timeto as MM, PatientNo, Speciality, Notes from Physicianschedule where Name =@name", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@name", num);
        //cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }
    public System.Data.DataSet getsurgeryInfo(string num)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT EmpId,PATIENTNO,SCODE,NAME,SDATE,OPT,BEGINTIME,ENDTIME FROM Surgery WHERE PATIENTNO=@pnum", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@pnum", num);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public System.Data.DataSet getIllnessInfo(string num)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT Distinct PatientNo,PEMPid, illness.I_code, Description, Comment FROM diagnosis, illness WHERE diagnosis.PatientNo = @Patientno AND diagnosis.I_Code=illness.I_Code", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Patientno", num);
        //cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public System.Data.DataSet getmedidata(string num)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT * from MedicalData where PatientNo = @Patientno", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Patientno", num);
        //cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public void addNurse(string name, string CName, string ssn, string Employmentnumber, string gender, string Address, string phone, string Speciality, string Grade, string year, string Salary,string jobtype)
    {
        if (string.IsNullOrEmpty(Salary))
        {
            Salary = "0";
        }
        openconnection();
        cmd = new SqlCommand("INSERT INTO Employee (EmpId,Name,CName,SSN,gender,Address,Phone,Speciality,Active,Salary,Jobtype) VALUES(@Employeementnumber,@Name,@Cname,@ssn,@gender,@Address,@phone,@Speciality,@Active,@Salary,@jobtype)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Name",name);
        cmd.Parameters.AddWithValue("@Employeementnumber",Employmentnumber);
        cmd.Parameters.AddWithValue("@Cname", CName);
        cmd.Parameters.AddWithValue("@ssn", ssn);
        cmd.Parameters.AddWithValue("@gender",gender);
        cmd.Parameters.AddWithValue("@Address",Address);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@Speciality",Speciality);
        
        cmd.Parameters.AddWithValue("@Active", 1);
        cmd.Parameters.AddWithValue("@Salary", Convert.ToInt32(Salary));
        cmd.Parameters.AddWithValue("@jobtype", Convert.ToInt32(jobtype));
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("INSERT INTO Nurse (EmpId,Grade,year,Active) VALUES(@Employeementnumber,@Grade,@year,@Active)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Employeementnumber", Employmentnumber);
        cmd.Parameters.AddWithValue("@Cname", CName);
        cmd.Parameters.AddWithValue("@Grade", Grade);
        cmd.Parameters.AddWithValue("@year", year);
        cmd.Parameters.AddWithValue("@Active", 1);
        cmd.ExecuteNonQuery();
        closeconnection();
    }

    public void addSupportStaff(string name, string CName, string ssn, string Employmentnumber, string gender, string Address, string phone, string Speciality, string Salary, string jobtype)
    {
        if (string.IsNullOrEmpty(Salary))
        {
            Salary = "0";
        }
        openconnection();
        cmd = new SqlCommand("INSERT INTO Employee (EmpId,Name,CName,SSN,gender,Address,Phone,Speciality,Active,Salary,Jobtype) VALUES(@Employeementnumber,@Name,@Cname,@ssn,@gender,@Address,@phone,@Speciality,@Active,@Salary,@jobtype)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@Employeementnumber", Employmentnumber);
        cmd.Parameters.AddWithValue("@Cname", CName);
        cmd.Parameters.AddWithValue("@ssn", ssn);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@Address", Address);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@Speciality", Speciality);

        cmd.Parameters.AddWithValue("@Active", 1);
        cmd.Parameters.AddWithValue("@Salary", Convert.ToInt32(Salary));
        cmd.Parameters.AddWithValue("@jobtype", Convert.ToInt32(jobtype));
        cmd.ExecuteNonQuery();
        //cmd = new SqlCommand("INSERT INTO SUPPORTSTAFF (Name,Employeementnumber,gender,Address,Speciality,Active,Salary,Jobtype) VALUES(@Name,@Employeementnumber,@gender,@Address,@Speciality,@Active,@Salary,@jobtype)", cn);
        //cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@Name", name);
        //cmd.Parameters.AddWithValue("@Employeementnumber", Employeementnumber);
        //cmd.Parameters.AddWithValue("@gender", gender);
        //cmd.Parameters.AddWithValue("@Address", Address);
        //cmd.Parameters.AddWithValue("@Speciality", Speciality);       
        //cmd.Parameters.AddWithValue("@Active", 1);
        //cmd.Parameters.AddWithValue("@Salary", Convert.ToInt32(Salary));
        //cmd.Parameters.AddWithValue("@jobtype", Convert.ToInt32(jobtype));
        //cmd.ExecuteNonQuery();
        //closeconnection();
    }

    public void addDoctorMaster(string name, string category, string speciallity, string salary, string employeementnumber)
    {
        if (string.IsNullOrEmpty(salary))
        {
            salary = "0";
        }
        openconnection();
        cmd = new SqlCommand("INSERT INTO Physician (Name,Type,Speciality,Active,Salary,Employeementnumber) VALUES(@Name,@Type,@Speciality,@Active,@Salary,@Employeementnumber)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Name",name );
        cmd.Parameters.AddWithValue("@Type", category);
        cmd.Parameters.AddWithValue("@Speciality",speciallity );
        cmd.Parameters.AddWithValue("@Active",1 );
        cmd.Parameters.AddWithValue("@Salary",Convert.ToInt32(salary));
        cmd.Parameters.AddWithValue("@Employeementnumber", employeementnumber);
        cmd.ExecuteNonQuery();
        closeconnection();

    }

    public void addshiftinfo(string employeeid, string cname, string day, string begintime, string endtime)
    {
        //drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone1.Text, txtTelephone2.Text, txtBloodType.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text, drpDoctor.Text, txtAppointmentDate.Text,drpFrom.SelectedItem.ToString(),drpTo.SelectedItem.ToString(),txtNotes.Text,Convert.ToInt32(txtId.Text.ToString().Trim())
        openconnection();
        cmd = new SqlCommand("INSERT INTO SHIFT (EmpId,CName,Day,Begin_time,End_time) VALUES(@employeeid,@cname,@day,@begintime,@endtime)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@employeeid", employeeid);
        cmd.Parameters.AddWithValue("@cname", cname);
        cmd.Parameters.AddWithValue("@day", day);
        cmd.Parameters.AddWithValue("@begintime", begintime);
        cmd.Parameters.AddWithValue("@endtime", endtime);
        
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
    }

    public void scheduleappointment(string patientnumber, string dname, string appointmentdate, string drpfrom, string drpto, string notes)
    {
        //drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone1.Text, txtTelephone2.Text, txtBloodType.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text, drpDoctor.Text, txtAppointmentDate.Text,drpFrom.SelectedItem.ToString(),drpTo.SelectedItem.ToString(),txtNotes.Text,Convert.ToInt32(txtId.Text.ToString().Trim())
        openconnection();
        cmd = new SqlCommand("SELECT EmpId from Physician where Name = @dname", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@dname", dname);

        string str = Convert.ToString(cmd.ExecuteScalar());

        cmd = new SqlCommand("UPDATE PATIENT SET PEMPid= '"+ str +"' where PatientNo = @patientnumber", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@patientnumber", patientnumber);
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("UPDATE Physicianschedule SET PatientNo=@patientnumber,date = @appdate, Timefrom = @timefrm, Timeto = @timeto, Notes= @notes where Name = @dname", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@patientnumber", patientnumber);
        cmd.Parameters.AddWithValue("@appdate", appointmentdate);
        cmd.Parameters.AddWithValue("@timefrm", drpfrom);
        cmd.Parameters.AddWithValue("@timeto", drpto);
        cmd.Parameters.AddWithValue("@notes", notes);
        cmd.Parameters.AddWithValue("@dname", dname);
        
        cmd.ExecuteNonQuery();

        //Update DOCTORSCHEDULE record
        cmd = new SqlCommand("UPDATE Physicianschedule SET AVAILABILITY=@false WHERE Name=@dname", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@false", 0);
        cmd.Parameters.AddWithValue("@dname", dname);
        cmd.ExecuteNonQuery();
       

        ////Insert record in Room_Surgery_Doctor_Relation table.
        //cmd = new SqlCommand("INSERT INTO Room_Surgery_Doctor_Relation (PatientId) VALUES(@PATIENTID)", cn);
        //cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@PATIENTID", getNewPatientNmberWithoutTime());
        //cmd.ExecuteNonQuery();

        closeconnection();
    }

    public void submitPatient(string patientnumber,string ssn,string Patientname,string gender,string dob,string address,string telephone,string bloodtype,string testname,string hdl,string ldl,string triglycerides,string bloodsugar,string allergies,string illnessdesc,string previousillnessessdiagnoses)
    {
        //drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone1.Text, txtTelephone2.Text, txtBloodType.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text, drpDoctor.Text, txtAppointmentDate.Text,drpFrom.SelectedItem.ToString(),drpTo.SelectedItem.ToString(),txtNotes.Text,Convert.ToInt32(txtId.Text.ToString().Trim())
        openconnection();
        cmd = new SqlCommand("INSERT INTO PATIENT (PatientNo,ssn,patientname,gender,DOB,address,telephone,bloodtype) VALUES(@patientnumber,@SSN,@patientname,@gender,@DOB,@address,@telephone,@bloodtype)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@patientnumber", patientnumber);
        cmd.Parameters.AddWithValue("@ssn",ssn );
        cmd.Parameters.AddWithValue("@patientname",Patientname );
        cmd.Parameters.AddWithValue("@gender",gender );
        cmd.Parameters.AddWithValue("@DOB",dob );
        cmd.Parameters.AddWithValue("@address",address );
        cmd.Parameters.AddWithValue("@telephone",telephone );
        cmd.Parameters.AddWithValue("@bloodtype", bloodtype);
        //cmd.Parameters.AddWithValue("@testname",testname );
        //cmd.Parameters.AddWithValue("@bloodtype", bloodtype);
        //cmd.Parameters.AddWithValue("@hdl",hdl );
        //cmd.Parameters.AddWithValue("@ldl", ldl);
        //cmd.Parameters.AddWithValue("@triglycerides",triglycerides );
        //cmd.Parameters.AddWithValue("@bloodsuger",bloodsugar );
        //cmd.Parameters.AddWithValue("@allergies",allergies );
        //cmd.Parameters.AddWithValue("@Illnessdesc",illnessdesc );
        //cmd.Parameters.AddWithValue("@previousillnessdiagnoses",previousillnessessdiagnoses );
        //cmd.Parameters.AddWithValue("@doctor",doctor);
        //cmd.Parameters.AddWithValue("@appointmentdate",appoointmentdate);
        //cmd.Parameters.AddWithValue("@appointmenttime",timefrom+"-"+timeto);
        //cmd.Parameters.AddWithValue("@notes",notes);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();

        cmd= new SqlCommand("INSERT INTO MedicalData (PatientNo,testname,hdl,ldl,triglycerides,bloodsugar,allergies,Illnessdesc,previousillnessdiagnoses) VALUES(@patientnumber,@testname,@hdl,@ldl,@triglycerides,@bloodsugar,@allergies,@Illnessdesc,@previousillnessdiagnoses)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@patientnumber", patientnumber);
        cmd.Parameters.AddWithValue("@testname", testname);
        cmd.Parameters.AddWithValue("@bloodtype", bloodtype);
        cmd.Parameters.AddWithValue("@hdl", hdl);
        cmd.Parameters.AddWithValue("@ldl", ldl);
        cmd.Parameters.AddWithValue("@triglycerides", triglycerides);
        cmd.Parameters.AddWithValue("@bloodsugar", bloodsugar);
        cmd.Parameters.AddWithValue("@allergies", allergies);
        cmd.Parameters.AddWithValue("@Illnessdesc", illnessdesc);
        cmd.Parameters.AddWithValue("@previousillnessdiagnoses", previousillnessessdiagnoses);
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        //Update DOCTORSCHEDULE record
        //cmd = new SqlCommand("UPDATE DOCTORSCHEDULE SET AVAILABILITY=@false WHERE ID=@id", cn);
        //cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@false", 0);
        //cmd.Parameters.AddWithValue("@ID", ID);
        //cmd.ExecuteNonQuery();
       

        ////Insert record in Room_Surgery_Doctor_Relation table.
        //cmd = new SqlCommand("INSERT INTO Room_Surgery_Doctor_Relation (PatientId) VALUES(@PATIENTID)", cn);
        //cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@PATIENTID", getNewPatientNmberWithoutTime());
        //cmd.ExecuteNonQuery();

        closeconnection();
    }
    public DataSet getClinicBed()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT NEmpId,PATIENTNO,BEDNUMBER,NURSINGUNIT,WING,ROOMNUMBER,BEDTYPE,FORDATE,DESCRIPTION FROM ClinicBed WHERE AVAILABILITY=@CHECK", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }

    public DataSet getRoomBedDetails()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT ID,NURSINGUNIT,WING,BEDTYPE,BEDNUMBER,FORDATE,DESCRIPTION FROM ROOMBEDDETAILS WHERE AVAILABILITY=@CHECK", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@CHECK", 1);
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;   
    
    }


    public DataSet getSchedule()
    {
        openconnection();
        DataSet ds = new DataSet();
        string sql = "SELECT ROOMBEDDETAILS.NURSINGUNIT,ROOMBEDDETAILS.WING,SURGERYMASTER.CODE,SURGERYMASTER.NAME AS SMASTER,DOCTORMASTER.NAME,DOCTORMASTER.TYPE,PATIENTDETAILS.PATIENTNAME,RSDR.ONDATE ";
        sql += "FROM ROOM_SURGERY_DOCTOR_RELATION RSDR INNER JOIN ";
                sql+="SURGERYMASTER ON RSDR.SURGERYID=SURGERYMASTER.ID INNER JOIN ";
                sql += "DOCTORMASTER ON RSDR.DOCTORID=DOCTORMASTER.ID INNER JOIN ";
                sql += "PATIENTDETAILS ON RSDR.PATIENTID=PATIENTDETAILS.ID INNER JOIN ";
                sql += "ROOMBEDDETAILS ON RSDR.ROOMID=ROOMBEDDETAILS.ID ";
        cmd = new SqlCommand(sql, cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }

    public DataSet getPatientDetails()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT ID,PATIENTNAME FROM PATIENTDETAILS WHERE ASSIGNEDDATE IS NULL or ASSIGNEDDATE=''", cn);
        cmd.CommandType = CommandType.Text;        
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }
    public DataSet getPatientInfo()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT Patient.PatientNo,PATIENTNAME FROM PATIENT, ClinicBed WHERE PATIENT.PatientNo=ClinicBed.PatientNo and ASSIGNEDDATE IS NULL or ASSIGNEDDATE=''", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }

    public DataSet getPatientDetailsSurgery()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT ID,PATIENTNAME FROM PATIENTDETAILS WHERE SURGERYTIME IS NULL OR SURGERYTIME=''", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }

    public DataSet getSurgeryMaster()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT ID, CODE FROM SURGERYMASTER WHERE ACTIVE=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;

    }

    public DataSet getAccomodationAvailablDetails()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT NEmpId,PatientNo,BedNumber FROM ClinicBed WHERE AVAILABILITY=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }
    public DataSet getPhysician()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT EmpId,NAME FROM Physician WHERE ACTIVE=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public DataSet getDoctorsMaster()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT EMPID,NAME FROM Physician WHERE ACTIVE=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    //public DataSet getNurseMaster()
    //{
    //    openconnection();
    //    DataSet ds = new DataSet();
    //    cmd = new SqlCommand("SELECT ID,NAME FROM NURSEMASTER WHERE ACTIVE=1", cn);
    //    cmd.CommandType = CommandType.Text;
    //    da = new SqlDataAdapter();
    //    da.SelectCommand = cmd;
    //    da.Fill(ds);
    //    closeconnection();
    //    return ds;
    //}

    public DataSet getSupportStaffMaster()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT distinct Employee.EmpId,NAME FROM EMPLOYEE,NURSE WHERE Employee.Active = 1 and Employee.EmpId not in(select Nurse.EmpId from Nurse where Nurse.ACTIVE=1)", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public DataSet getJobType()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT ID,Jobtype FROM JOBTYPE WHERE ACTIVE=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }


    public DataSet getNurseMaster()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT Nurse.EmpId,NAME FROM NURSE, EMPLOYEE WHERE Nurse.EmpId=Employee.EmpId and Employee.ACTIVE=1", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public DataSet getStaffAsPerJobType()
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("SELECT NM.EMPID, NM.NAME AS NAME,NM.GENDER AS GENDER,NM.SPECIALITY AS SPECIALITY,'NURSE' AS CATEGORY,JT.JOBTYPE AS JOBTYPE FROM NURSE NR, (EMPLOYEE NM INNER JOIN JOBTYPE JT ON NM.JOBTYPE=JT.ID) where NM.EMPID=NR.EMPID and NM.Active = 1 UNION SELECT  SF.EMPID,SF.NAME AS NAME,SF.GENDER AS GENDER,SF.SPECIALITY AS SPECIALITY,'SUPPORT' AS CATEGORY,JT.JOBTYPE AS JOBTYPE FROM EMPLOYEE SF INNER JOIN JOBTYPE AS JT ON SF.JOBTYPE=JT.ID where SF.Active=1 and SF.EMPID not in (select Nurse.EmpId from Nurse) ", cn);
        cmd.CommandType = CommandType.Text;
        da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(ds);
        closeconnection();
        return ds;
    }

    public void updateInpatient(Int32 PatientId,string accomodationId,string assignedDate,string assignedHourMinute,string removedDate,string removedDateHourMinute,bool assign)
    {
        openconnection();
        DataSet ds = new DataSet();
        cmd = new SqlCommand("UPDATE PATIENTDETAILS SET ASSIGNEDDATE=@AD,ASSIGNEDTIME=@AT,REMOVEDDATE=@RD,REMOVEDTIME=@RT WHERE ID=@ID", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@AD", assignedDate);
        cmd.Parameters.AddWithValue("@AT", assignedHourMinute);
        cmd.Parameters.AddWithValue("@RD", removedDate);
        cmd.Parameters.AddWithValue("@RT", removedDateHourMinute);
        cmd.Parameters.AddWithValue("@ID", PatientId);
        cmd.ExecuteNonQuery();

        if (assign) { assign = false; } else { assign = true; }; //means if assign true then availability will be false
        cmd = new SqlCommand("UPDATE ROOMBEDDETAILS SET AVAILABILITY=@STATUS WHERE ID=@ID", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@STATUS", assign);
        cmd.Parameters.AddWithValue("@ID", accomodationId);
        cmd.ExecuteNonQuery();
        

        cmd = new SqlCommand("UPDATE ROOM_SURGERY_DOCTOR_RELATION SET ROOMID=@ID WHERE PATIENTID=@PATIENT", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", accomodationId);
        cmd.Parameters.AddWithValue("@PATIENT", PatientId);
        cmd.ExecuteNonQuery();
        closeconnection();
               
    }

    public void updateDoctor(Int32 PatientId, string Doctor,Int32 DoctorId)
    {
        openconnection();
        cmd = new SqlCommand("UPDATE PATIENTDETAILS SET DOCTOR=@DOCTOR WHERE ID=@ID", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@DOCTOR", Doctor);
        cmd.Parameters.AddWithValue("@ID", PatientId);
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("UPDATE ROOM_SURGERY_DOCTOR_RELATION SET DOCTORID=@ID WHERE PATIENTID=@PATIENT", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", DoctorId);
        cmd.Parameters.AddWithValue("@PATIENT", PatientId);
        cmd.ExecuteNonQuery();        
        closeconnection();
    }

    public void updateNurse(Int32 PatientId, Int32 NurseId)
    {
        openconnection();
        cmd = new SqlCommand("UPDATE PATIENTDETAILS SET NURSEID=@NURSEID WHERE ID=@ID", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@NURSEID", NurseId);
        cmd.Parameters.AddWithValue("@ID", PatientId);
        cmd.ExecuteNonQuery();
        closeconnection();
    }

    public void updateSurgery(String PatientId,Int32 SurgeryId,string Surgeonid,string name,string onDate, string opt, string begintime, string endtime)
    {
        openconnection();
        //cmd = new SqlCommand("UPDATE PATIENTDETAILS SET SURGERYTIME=@SURGERYTIME WHERE ID=@ID", cn);
        //cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@SURGERYTIME", SurgeryTime);
        //cmd.Parameters.AddWithValue("@ID", PatientId);
        //cmd.ExecuteNonQuery();
        cmd = new SqlCommand("INSERT INTO SURGERY (EMPID,PATIENTNO,SCODE,NAME,SDATE,OPT,BEGINTIME,ENDTIME,ACTIVE) VALUES (@EMPID, @PATIENT, @CODE, @NAME,@SDATE, @OPT,@BTIME, @ETIME,@active)", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@EMPID", Surgeonid);
        cmd.Parameters.AddWithValue("@PATIENT", PatientId);
        cmd.Parameters.AddWithValue("@CODE", SurgeryId);
        cmd.Parameters.AddWithValue("@NAME", name);
        cmd.Parameters.AddWithValue("@SDATE", onDate);
        cmd.Parameters.AddWithValue("@OPT", opt);
        cmd.Parameters.AddWithValue("@BTIME", begintime);
        cmd.Parameters.AddWithValue("@ETIME", endtime);
        cmd.Parameters.AddWithValue("@active", 1);
        cmd.ExecuteNonQuery();

        cmd = new SqlCommand("UPDATE ROOM_SURGERY_DOCTOR_RELATION SET SURGERYID=@ID,ONDATE=@ONDATE WHERE PATIENTID=@PATIENT", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ID", SurgeryId);
        cmd.Parameters.AddWithValue("@PATIENT", PatientId);
        cmd.Parameters.AddWithValue("@ONDATE",onDate);
        cmd.ExecuteNonQuery();
        closeconnection();
    }

    public void removeDoctor(Int32 Id)
    {
        openconnection();
        cmd = new SqlCommand("UPDATE DOCTORMASTER SET ACTIVE=@ACTIVE WHERE ID=@ID", cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@ACTIVE",0);
        cmd.Parameters.AddWithValue("@ID", Id);
        cmd.ExecuteNonQuery();
        closeconnection();
    }

    public void removeNurseSupportStaff(Int32 Id,Int32 value)
    {
        openconnection();
        if (value == 0) //Nurse
        {
            cmd = new SqlCommand("UPDATE NURSE SET ACTIVE=@ACTIVE WHERE EmpId=@ID", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ACTIVE", 0);
            cmd.Parameters.AddWithValue("@ID", Id);
            cmd.ExecuteNonQuery();

            cmd = new SqlCommand("UPDATE Employee SET ACTIVE=@ACTIVE WHERE EmpId=@ID", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ACTIVE", 0);
            cmd.Parameters.AddWithValue("@ID", Id);
            cmd.ExecuteNonQuery();
        }
        else if (value == 1) //Support Staff
        {
            
            cmd = new SqlCommand("UPDATE Employee SET ACTIVE=@ACTIVE WHERE EmpId=@ID", cn);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ACTIVE", 0);
            cmd.Parameters.AddWithValue("@ID", Id);
            cmd.ExecuteNonQuery();
        }
        
        closeconnection();
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        