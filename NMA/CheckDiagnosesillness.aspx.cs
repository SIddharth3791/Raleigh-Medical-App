using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class CheckDiagnosesillness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearchIllness_Click(object sender, EventArgs e)
    {

        DAL dl = new DAL();
        grdIllnessSearch.DataSource = null;
        DataSet ds = new DataSet();
        ds = dl.getIllnessInfo(TxtPatientNumber.Text);
        if (ds != null && ds.Tables.Count > 0)
        {
            grdIllnessSearch.DataSource = ds.Tables[0];
            grdIllnessSearch.DataBind();
        }
    }
        
}