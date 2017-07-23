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
            DataSet ds = new DataSet();
            //ds = dl.getPatientDetailsSurgery();
            //if (ds.Tables.Count > 0)
            //{
            //    drpPatients.DataSource = ds.Tables[0];
            //    drpPatients.DataTextField = "patientname";
            //    drpPatients.DataValueField = "Id";
            //    drpPatients.DataBind();
            //}

            ds = new DataSet();
            ds = dl.getSurgeryMaster();
            if (ds.Tables.Count > 0)
            {
                drpSurgery.DataSource = ds.Tables[0];
                drpSurgery.DataTextField = "Code";
                drpSurgery.DataValueField = "Id";
                drpSurgery.DataBind();
            }

            drpSurgery.Items.Insert(0, new ListItem(""));
        }
        

    }
    protected void btnUpdateSurgery_Click(object sender, EventArgs e)
    {
            dl.updateSurgery(txtPnum.Text, Convert.ToInt32(drpSurgery.SelectedValue),txtSId.Text,txtname.Text,txtAssignedDate.Text,Txtopt.Text,txtbegintime.Text,txtendtime.Text);
            Response.Redirect("~/BookSurgery.aspx");
        //Reset();   
    }

}


