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
            ds = dl.getDoctorsMaster();
            if (ds.Tables.Count > 0)
            {
                drpDoctors.DataSource = ds.Tables[0];
                drpDoctors.DataTextField = "NAME";
                drpDoctors.DataValueField = "ID";
                drpDoctors.DataBind();
            }
            drpDoctors.Items.Insert(0, new ListItem(""));
        }
    }
    protected void btnAddDoctor_Click(object sender, EventArgs e)
    {
        string Category=drpCategory.SelectedItem.ToString();
        dl.addDoctorMaster(txtDoctorName.Text, Category, txtSpecialized.Text, txtSalary.Text, txtEmploymentnumber.Text);
        Response.Redirect("~/Doctors.aspx");
    }
    protected void btnRemoveDoctor_Click(object sender, EventArgs e)
    {
        if (drpDoctors.SelectedValue.ToString() != "")
        {
            Int32 doctorId = Convert.ToInt32(drpDoctors.SelectedValue);
            dl.removeDoctor(doctorId);
            Response.Redirect("~/Doctors.aspx");
        }
        
    }
}