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
                ds = dl.getJobType();
                if (ds.Tables.Count > 0)
                {
                    drpJobType.DataSource = ds.Tables[0];
                    drpJobType.DataTextField = "Jobtype";
                    drpJobType.DataValueField = "Id";
                    drpJobType.DataBind();
                }
            }
        }
        protected void drpCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpCategory.SelectedValue.ToString() == "1")
            {
                txtGrade.Enabled = false;
                txtYear.Enabled = false;

            }
            else
            {
                txtGrade.Enabled = true;
                txtYear.Enabled = true;
            }
        }
        protected void btnAddDoctor_Click(object sender, EventArgs e)
        {
            if (drpCategory.SelectedValue.ToString() == "0")
            { 
               //Nurse
                dl.addNurse(txtName.Text, txtCName.Text, txtSSN.Text, txtEmploymentnumber.Text, drpGender.SelectedItem.ToString(), txtAddress.Text, txtphone.Text, txtSpecialized.Text, txtGrade.Text, txtYear.Text, txtSalary.Text,drpJobType.SelectedValue);
                Response.Redirect("~/Staff.aspx");
            }
            else if (drpCategory.SelectedValue.ToString() == "1")
            { 
                //Support staff
                ////dl.addSupportStaff(txtName.Text,txtCName.Text, txtSSN.Text, txtEmploymentnumber.Text, drpGender.SelectedItem.ToString(), txtAddress.Text, txtphone.Text, txtSpecialized.Text, txtSalary.Text,drpJobType.SelectedValue);
                Response.Redirect("~/Staff.aspx");
            }
        }
        protected void btnRemoveDoctor_Click(object sender, EventArgs e)
        {

            if (drpRemove.SelectedValue.ToString() == "0") //Nurse
            {
                if (drpStaffName.SelectedValue.ToString() != "")
                {
                    dl.removeNurseSupportStaff(Convert.ToInt32(drpStaffName.SelectedValue), 0);    
                }            
            }
            else if (drpRemove.SelectedValue.ToString() == "1") //Supportstaff
            {
                if (drpStaffName.SelectedValue.ToString() != "")
                {
                    dl.removeNurseSupportStaff(Convert.ToInt32(drpStaffName.SelectedValue), 1);
                }     
            }
        }
        protected void drpRemove_SelectedIndexChanged(object sender, EventArgs e)
        {
       
        
                if (drpRemove.SelectedValue.ToString() == "0") //Nurse
                {
                    DataSet ds = new DataSet();
                    ds = dl.getNurseMaster();
                    if (ds.Tables.Count > 0)
                    {
                        drpStaffName.DataSource = ds.Tables[0];
                        drpStaffName.DataTextField = "Name";
                        drpStaffName.DataValueField = "EmpId";
                        drpStaffName.DataBind();
                    }
                }
                else if (drpRemove.SelectedValue.ToString() == "1") //Supportstaff
                {
                    DataSet ds = new DataSet();
                    ds = dl.getSupportStaffMaster();
                    if (ds.Tables.Count > 0)
                    {
                        drpStaffName.DataSource = ds.Tables[0];
                        drpStaffName.DataTextField = "Name";
                        drpStaffName.DataValueField = "EmpId";
                        drpStaffName.DataBind();
                    }
                }     
        
        }
    }