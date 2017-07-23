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
        DataSet ds = new DataSet();
        ds = dl.getSchedule();
        if (ds.Tables.Count > 0)
        {
            grdSchedule.DataSource = ds.Tables[0];
            grdSchedule.DataBind();
        }

    }
}