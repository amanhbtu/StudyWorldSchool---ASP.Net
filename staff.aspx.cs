using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class staff : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_teaching();
            show_technical();
            show_nontechnical();
            show_management();
        }
    }
    protected void show_management()
    {
        co.connect();
        String stt = "select * from staff_detail where type='MANAGEMENT';";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_management.DataSource = ds.Tables[0].DefaultView;
        repeater_management.DataBind();
        co.disconnect();
    }
    protected void show_technical()
    {
        co.connect();
        String stt = "select * from staff_detail where type='TECHNICAL';";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_technical.DataSource = ds.Tables[0].DefaultView;
        repeater_technical.DataBind();
        co.disconnect();
    }
    protected void show_teaching()
    {
        co.connect();
        String stt = "select * from staff_detail where type='TEACHING';";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_teaching.DataSource = ds.Tables[0].DefaultView;
        repeater_teaching.DataBind();
        co.disconnect();
    }
    protected void show_nontechnical()
    {
        co.connect();
        String stt = "select * from staff_detail where type='NON-TECHNICAL';";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_nonteaching.DataSource = ds.Tables[0].DefaultView;
        repeater_nonteaching.DataBind();
        co.disconnect();
    }
}