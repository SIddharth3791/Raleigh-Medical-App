using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //fill patients
            DataSet ds = new DataSet();
            ds = dl.getPatientDetails();
            if (ds.Tables.Count > 0)
            {
                drpPatients.DataSource = ds.Tables[0];
                drpPatients.DataTextField = "patientname";
                drpPatients.DataValueField = "Id";
                drpPatients.DataBind();

                drpPatienttoDoctor.DataSource = ds.Tables[0];
                drpPatienttoDoctor.DataTextField = "patientname";
                drpPatienttoDoctor.DataValueField = "Id";
                drpPatienttoDoctor.DataBind();

                drpPatienttoNurse.DataSource = ds.Tables[0];
                drpPatienttoNurse.DataTextField = "patientname";
                drpPatienttoNurse.DataValueField = "Id";
                drpPatienttoNurse.DataBind();
            }
            //fill accomodation
            ds = new DataSet();
            ds = dl.getAccomodationAvailablDetails();
            if (ds.Tables.Count > 0)
            {
                drpAccomodation.DataSource = ds.Tables[0];
                drpAccomodation.DataTextField = "Id";
                drpAccomodation.DataValueField = "Id";
                drpAccomodation.DataBind();
            }

            ds = new DataSet();
            ds = dl.getDoctorsMaster();
            if (ds.Tables.Count > 0)
            {
                drpDoctor.DataSource = ds.Tables[0];
                drpDoctor.DataTextField = "NAME";
                drpDoctor.DataValueField = "EMPID";
                drpDoctor.DataBind();
            }

            ds = new DataSet();
            ds = dl.getNurseMaster();
            if (ds.Tables.Count > 0)
            {
                drpNurse.DataSource = ds.Tables[0];
                drpNurse.DataTextField = "NAME";
                drpNurse.DataValueField = "ID";
                drpNurse.DataBind();
            }
            drpNurse.Items.Insert(0, new ListItem(""));
        
        }
       

    }
    protected void btnAssign_Click(object sender, EventArgs e)
    {
        Int32 patientId =Convert.ToInt32(drpPatients.SelectedValue);
        string accomodationId = drpAccomodation.SelectedValue;
        string assignedDate=txtAssignedDate.Text;
        string assignedHourMinute=drpFrom.Text + "-" + drpTo.Text;
        string removedDate = txtRemoveDate.Text;
        string removedDateHourMinute=drpFrom2.Text + "-" + drpTo2.Text;

        dl.updateInpatient(patientId, accomodationId, assignedDate, assignedHourMinute, removedDate, removedDateHourMinute, chkAssign.Checked);

    }
    protected void btnUpdateDoctor_Click(object sender, EventArgs e)
    {
        dl.updateDoctor(Convert.ToInt32(drpPatienttoNurse.SelectedValue), drpDoctor.SelectedItem.ToString(), Convert.ToInt32(drpDoctor.SelectedValue));
    }
    protected void btnUpdateNurse_Click(object sender, EventArgs e)
    {
        dl.updateNurse(Convert.ToInt32(drpPatienttoNurse.SelectedValue),Convert.ToInt32(drpNurse.SelectedValue));
    }
}