using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_Default : System.Web.UI.Page
{
    public Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(txtb_usern);
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        String usrname = txtb_usern.Text;
        String pass = txtb_userp.Text;
        String stt = "select usr_name from admin_log where usr_name='"+usrname+"' and usr_pass='"+pass+"'";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt,co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["usrname"] = dr["usr_name"].ToString();
                if (Session["call_page"] != null)
                {
                    Response.Redirect(Session["call_page"].ToString());
                }
                else
                {
                    Response.Redirect("admin_mail.aspx");
                }
            }
        }
        else
        {
            lblerror.Text = "Incorrect Username or Password";
        }
        co.disconnect();
    }
}