using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BookDoctor : System.Web.UI.Page
{
    DAL dl = new DAL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = dl.getPhysician();
            if (ds.Tables.Count > 0)
            {
                drpDoctor.DataSource = ds.Tables[0];
                drpDoctor.DataTextField = "NAME";
                drpDoctor.DataBind();
            }
            drpDoctor.Items.Insert(0, new ListItem("--SELECT--"));
            mltView.ActiveViewIndex = 0;
        }
    }

    protected void drpDoctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdDoctorSchedule.DataSource = null;
        DataSet ds = new DataSet();
        ds = dl.getDoctorSchedule(drpDoctor.Text);
        if (ds != null && ds.Tables.Count > 0)
        {
            grdDoctorSchedule.DataSource = ds.Tables[0];
            grdDoctorSchedule.DataBind();
        }


    }
    protected void btnScheduleAppointment_Click(object sender, EventArgs e)
    {
        dl.scheduleappointment(txtPatientNumber.Text, drpDoctor.Text, txtAppointmentDate.Text, drpFrom.SelectedItem.ToString(), drpTo.SelectedItem.ToString(), txtNotes.Text);
        //grdDoctorSchedule.DataSource = null;
        //grdDoctorSchedule.Visible = false;
        //mltView.ActiveViewIndex = 0;
        Response.Redirect("~/BookDoctor.aspx");
        ////Reset();
    }
    
}