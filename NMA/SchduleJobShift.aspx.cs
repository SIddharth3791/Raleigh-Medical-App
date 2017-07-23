using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SchduleJobShift : System.Web.UI.Page
{
    DAL dl = new DAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdateShift_Click(object sender, EventArgs e)
    {
        dl.addshiftinfo(TxtEmployeeId.Text, TxtCName.Text, TxtDay.Text, Drpbegintimefrom.Text + "-" + Dropbegintimeto.Text, drpendtimeFrom.Text + "-" + drpendtimeto.Text);
        //grdDoctorSchedule.DataSource = null;
        //grdDoctorSchedule.Visible = false;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        

        Response.Redirect("~/SchduleJobShift.aspx");
        //Reset();
    }
}