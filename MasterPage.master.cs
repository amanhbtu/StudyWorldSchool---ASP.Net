using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Connection co = new Connection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        //    showdet();
        //    showimg();
        //    show_slider();
        }
    }
    protected void showdet()
    {
        String stt = "select * from school_detail";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                lblftraddress.Text = dr[1].ToString();
                //lblheadmobile.Text = dr[2].ToString();
                lblftrmobile.Text = dr[2].ToString();
                lblftremail.Text = dr[3].ToString();
                linkftremail.NavigateUrl = "mailto:" + dr[3].ToString();
                //lblheadtime.Text = dr[4].ToString();
                lblftrtime.Text = dr[4].ToString();
                lblaboutusmain.Text = dr[5].ToString();
            }
        }
        co.disconnect();
    }
    protected void showimg()
    {
        co.connect();
        String stt = "select * from footer_image";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeaterimg.DataSource = ds.Tables[0].DefaultView;
        repeaterimg.DataBind();
        co.disconnect();
    }
    protected void show_slider()
    {
        co.connect();
        String stt = "select * from slider_detail order by date_time desc;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_slider.DataSource = ds.Tables[0].DefaultView;
        repeater_slider.DataBind();
        co.disconnect();
    }
}
