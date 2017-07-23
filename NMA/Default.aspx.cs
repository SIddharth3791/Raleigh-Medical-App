using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        //cdlDOB.Text = DateTime.Now.Date.ToString("MM-dd-yyyy");
        //cdlDOB.Attributes.Add("Text", DateTime.Now.Date.ToString("MM-dd-yyyy"));
        //txtAppointmentDate.Text = DateTime.Now.Date.ToString("MM-dd-yyyy");

        if ((Session["Loggedin"]==null) || (Session["Loggedin"].ToString() == ""))
        {
            Response.Redirect("~/Default2.aspx");
        }
        else
        {
            //Label tbTest = (Label)this.Master.FindControl("lblUser");
            //tbTest.Text = "Welcome " + Session["Loggedin"].ToString();
        }

    }
    protected void btnView2_Click(object sender, EventArgs e)
    {
        mltView.ActiveViewIndex = 1;

    }
    protected void btnView3_Click(object sender, EventArgs e)
    {
        txtPatientNumber.Text = dl.getNewPatientNmber();
        //Fill doctor dropdown list.
        DataSet ds = new DataSet();
        ds = dl.getDoctorsMaster();
        if (ds.Tables.Count > 0) 
        {
            drpDoctor.DataSource = ds.Tables[0];
            drpDoctor.DataTextField = "NAME";
            drpDoctor.DataBind();
        }
       drpDoctor.Items.Insert(0,new ListItem("--SELECT--"));
        mltView.ActiveViewIndex = 2;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        mltView.ActiveViewIndex = 1;
    }
    protected void btnGoToGeneral_Click(object sender, EventArgs e)
    {
        mltView.ActiveViewIndex = 0;
    }
    
    protected void drpDoctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdDoctorSchedule.DataSource = null;
        DataSet ds = new DataSet();
        ds=dl.getDoctorSchedule(drpDoctor.Text);
        if (ds != null && ds.Tables.Count > 0)
        {
            grdDoctorSchedule.DataSource = ds.Tables[0];
            grdDoctorSchedule.DataBind();
        }
        

    }
    protected void btnSubmitPatient_Click(object sender, EventArgs e)
    {
        //dl.submitPatient(txtPatientNumber.Text, txtSSN.Text, txtPatientName.Text, drpGender.SelectedItem.ToString(), cdlDOB.Text, txtAddress.Text, txtTelephone1.Text, txtTelephone2.Text, txtBloodType.Text, txtHDL.Text, txtLDL.Text, txtTriglycerides.Text, txtBloodSuger.Text, txtAllergies.Text, txtIllness.Text, txtPreviousDiagnose.Text, drpDoctor.Text, txtAppointmentDate.Text,drpFrom.SelectedItem.ToString(),drpTo.SelectedItem.ToString(),txtNotes.Text,Convert.ToInt32(txtId.Text.ToString().Trim()));
        //grdDoctorSchedule.DataSource = null;
        //grdDoctorSchedule.Visible = false;
        //mltView.ActiveViewIndex = 0;
        //Response.Redirect("~/Default.aspx");
        ////Reset();
    }
}