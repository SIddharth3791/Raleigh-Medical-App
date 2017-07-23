using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPatient : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["Loggedin"] == null) || (Session["Loggedin"].ToString() == ""))
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            txtPnum.Text = dl.getNewPatientNmber();
            //Label tbTest = (Label)this.Master.FindControl("lblUser");
            //tbTest.Text = "Welcome " + Session["Loggedin"].ToString();
        }
    }
    protected void btnView2_Click(object sender, EventArgs e)
    {
        mltView.ActiveViewIndex = 1;

    }
    //protected void btnView3_Click(object sender, EventArgs e)
    //{
    //    txtPatientNumber.Text = dl.getNewPatientNmber();
    //    //Fill doctor dropdown list.
    //    DataSet ds = new DataSet();
    //    ds = dl.getDoctorsMaster();
    //    if (ds.Tables.Count > 0)
    //    {
    //        drpDoctor.DataSource = ds.Tables[0];
    //        drpDoctor.DataTextField = "NAME";
    //        drpDoctor.DataBind();
    //    }
    //    drpDoctor.Items.Insert(0, new ListItem("--SELECT--"));
    //    mltView.ActiveViewIndex = 2;
    //}

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    mltView.ActiveViewIndex = 1;
    //}
    protected void btnGoToGeneral_Click(object sender, EventArgs e)
    {
        mltView.ActiveViewIndex = 0;
    }
    //protected void drpDoctor_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    grdDoctorSchedule.DataSource = null;
    //    DataSet ds = new DataSet();
    //    ds = dl.getDoctorSchedule(drpDoctor.Text);
    //    if (ds != null && ds.Tables.Count > 0)
    //    {
    //        grdDoctorSchedule.DataSource = ds.Tables[0];
    //        grdDoctorSchedule.DataBind();
    //    }


    //}
    protected void btnSubmitPatient_Click(object sender, EventArgs e)
    {
        dl.submitPatient(txtPnum.Text, txtSSN.Text, txtPatientName.Text, drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone.Text, txtbloodgroup.Text, txtTestName.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text);
        //grdDoctorSchedule.DataSource = null;
        //grdDoctorSchedule.Visible = false;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        mltView.ActiveViewIndex = 0;
       
        Response.Redirect("~/AddPatient.aspx");
        //Reset();
    }
}