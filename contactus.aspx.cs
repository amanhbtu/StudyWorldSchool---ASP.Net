using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class contactus : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtbmsg.Text.Length <= 300)
        {
            int userid = 0;
            String name = txtbname.Text.Trim().ToUpper().ToString();
            String email = txtbemail.Text.Trim().ToUpper().ToString();
            String sub = txtbsub.Text.Trim().ToUpper().ToString();
            String mob = txtbmob.Text.Trim().ToUpper().ToString();
            String msg = txtbmsg.Text.Trim().ToUpper().ToString();
            String stt;
            if (userid > 0)
            {
                stt = "insert into mail(userid,name,sub,email,mob,msg,m_read,m_folder) values(" + userid + ",'" + name + "','" + sub + "','" + email + "','" + mob + "','" + msg + "','unread','inbox');";
            }
            else
            {
                stt = "insert into mail(name,sub,email,mob,msg,m_read,m_folder) values('" + name + "','" + sub + "','" + email + "','" + mob + "','" + msg + "','unread','inbox');";
             }
            co.connect();
            SqlCommand cmd = new SqlCommand(stt, co.con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                lblmsg.ForeColor = Color.Blue;
                lblmsg.Text = "Mail Sent Succesfully To Us We Soon Response To Your Mail";
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Mail Not Sent Succesfully To Us";
            }
            txtbemail.Text = "Email Address";
            txtbmsg.Text = "Your Message For Us";
            txtbname.Text = "Your Name";
            txtbsub.Text = "Subject";
            co.disconnect();
        }
        else
        {
            lblmsg.Text = "Message Size Should Be Maximum 300 Characters";
        }
    }
    
}