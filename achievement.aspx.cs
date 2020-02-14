using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class achievement : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        show_xii();
        show_awards();
        show_x();
    }
    protected void show_xii()
    {
        co.connect();
        String stt = "select * from toppers where class='XII' order by percentage desc;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_xii.DataSource = ds.Tables[0].DefaultView;
        repeater_xii.DataBind();
        co.disconnect();
    }
    protected void show_x()
    {
        co.connect();
        String stt = "select * from toppers where class='X' order by percentage desc;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_x.DataSource = ds.Tables[0].DefaultView;
        repeater_x.DataBind();
        co.disconnect();
    }
    protected void show_awards()
    {
        co.connect();
        String stt = "select * from toppers where class='award' order by session desc;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeater_awards.DataSource = ds.Tables[0].DefaultView;
        repeater_awards.DataBind();
        co.disconnect();
    }
}