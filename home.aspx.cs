using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Default2 : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //notice();
            //shownotice();
            //show_xii();
            //show_x();
        }
    }
    protected void shownotice()
    {
        listnotice.Items.Clear();
        String stt = "select * from notice";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                listnotice.Items.Add("==> " + dr[1].ToString() + " : " + dr[2].ToString() + "   ");
            }
        }
        co.disconnect();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtbcalen.Text = "";
        String stt = "select * from calender";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                DateTime day = Convert.ToDateTime(dr["date"].ToString());
                int a = day.Day;
                int b = day.Month;
                txtbcalen.Visible = true;
                if (Calendar1.SelectedDate.Day == a && Calendar1.SelectedDate.Month == b)
                {
                    txtbcalen.Text = txtbcalen.Text + "\n" + dr["event"].ToString();
                }
            }
        }
        if (txtbcalen.Text == "")
        {
            txtbcalen.Visible = false;
        }
        co.disconnect();
    }
    protected void Calendar1_DayRender1(object sender, DayRenderEventArgs e)
    {
        // Add custom text to cell in the Calendar control.
        String stt = "select * from calender";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                DateTime day = Convert.ToDateTime(dr["date"].ToString());
                int a = day.Day;
                int b = day.Month;
                txtbcalen.Visible = true;
                if (e.Day.Date.Day == a&&e.Day.Date.Month==b)
                {
                    e.Cell.BackColor = Color.Red;
                    e.Cell.ForeColor = Color.White;
                    if (e.Day.Date == Calendar1.TodaysDate)
                    {
                        txtbcalen.Text = txtbcalen.Text + "\n" + dr["event"].ToString();
                    }
                }
            }
        }
        if (txtbcalen.Text == "")
        {
            txtbcalen.Visible = false;
        }
        co.disconnect();
    }
    protected void notice()
    {
        bulletlnotice.Items.Clear();
        String stt = "select * from notice";
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                bulletlnotice.Items.Add(dr[1].ToString() + " : " + dr[2].ToString());
            }
        }
        co.disconnect();
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
}