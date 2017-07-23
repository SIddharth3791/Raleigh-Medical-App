using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtUsername.Text) && !string.IsNullOrEmpty(txtPassword.Text))
        {
            if (txtUsername.Text.ToUpper() == "MA12345")
            {
                if (txtPassword.Text.ToUpper() == "MA12345")
                {
                    Session["Loggedin"] = "MA12345";
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    Label3.Text = "Enter valid UserName/Password";
                    //Session["Loggedin"] = "Enter valid UserName/Password";
                }
            }
        }
        
    }
}