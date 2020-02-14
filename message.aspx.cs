using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class message : System.Web.UI.Page
{
    public Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        school_detail();
    }
    protected void school_detail()
    {
        co.connect();
        String stt = "select * from school_detail";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                lblpmsg.Text = dr["principal_msg"].ToString();
                lblpname.Text = dr["principal_name"].ToString();
                imgp.ImageUrl = dr["principal_img"].ToString();
                lblvpmsg.Text = dr["vprincipal_msg"].ToString();
                lblvpname.Text = dr["vprincipal_name"].ToString();
                imgvp.ImageUrl = dr["vprincipal_img"].ToString();
                lblmmsg.Text = dr["manager_msg"].ToString();
                lblmname.Text = dr["manager_name"].ToString();
                imgm.ImageUrl = dr["manager_img"].ToString();
            }
        }
        co.disconnect();
    }
}