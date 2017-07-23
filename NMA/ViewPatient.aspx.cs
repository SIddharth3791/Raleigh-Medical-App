    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data;

    public partial class ViewPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
        }
        protected void btnSearchPatient_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            DAL dl = new DAL();
            grdPatientSearch.DataSource = null;
            grdmedicaldata.DataSource = null;
            DataSet ds = new DataSet();
            DataSet ds1 = new DataSet();
            ds = dl.getPatientInfo(TxtPatientNumber.Text);
            ds1 = dl.getmedidata(TxtPatientNumber.Text);
            if (ds != null && ds.Tables.Count > 0)
            {
                grdPatientSearch.DataSource = ds.Tables[0];
                grdPatientSearch.DataBind();
            }
            if (ds1 != null && ds1.Tables.Count > 0)
            {
                grdmedicaldata.DataSource = ds1.Tables[0];
                grdmedicaldata.DataBind();
            }

            //dl.submitPatient(txtPnum.Text, txtSSN.Text, txtPatientName.Text, drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone.Text, txtbloodgroup.Text, txtTestName.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text);
            ////grdDoctorSchedule.DataSource = null;
            ////grdDoctorSchedule.Visible = false;
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            //mltView.ActiveViewIndex = 0;

            //Response.Redirect("~/AddPatient.aspx");
            //Reset();
        }
    }