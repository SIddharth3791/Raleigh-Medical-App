using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Scheduleperday : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDoctorName_Click(object sender, EventArgs e)
    {

        DAL dl = new DAL();
        grdIllnessSearch.DataSource = null;
        DataSet ds = new DataSet();
        ds = dl.getscheduleperday(TxtDoctorName.Text);
        if (ds != null && ds.Tables.Count > 0)
        {
            grdIllnessSearch.DataSource = ds.Tables[0];
            grdIllnessSearch.DataBind();
        }
    }
}