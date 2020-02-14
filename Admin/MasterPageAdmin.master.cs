using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usrname"] == null || Session["usrname"] == "")
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["usrname"] = "";
        Response.Redirect("admin_login.aspx");
    }
}
