using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

public partial class Admin_admin_notice : System.Web.UI.Page
{
    public Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
            showevent();
            panelevents.Visible = false;
        }
    }
    protected void gv_delete(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvfee.DataKeys[e.RowIndex].Values["id"].ToString());
        String stt = "delete from notice where id=" + id;
        String name = showname(id);
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
            lblmsg.Text = name + "'s Details Deleted Succesfully";
        else
            lblmsg.Text = name + "'s Details Deleted Unsuccesfully";
        co.disconnect();
        show();
    }
    protected void show()
    {
        co.connect();
        String stt = "SELECT * FROM notice";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        co.disconnect();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvfee.RowStyle.ForeColor = Color.Blue;
            gvfee.DataSource = ds;
            gvfee.DataBind();
        }
    }
    protected String showname(int id)
    {
        co.connect();
        String name = "";
        string stt = "select * from notice where id=" + id + "";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                name = dr["noticehead"].ToString();
            }
        }
        co.disconnect();
        return (name);
    }
    protected void gv_edit(object sender, GridViewEditEventArgs e)
    {
        gvfee.EditIndex = e.NewEditIndex;
        int id = Convert.ToInt32(gvfee.DataKeys[e.NewEditIndex].Value);
        editing(id);
        show();
    }
    protected void gv_canceledit(object sender, GridViewCancelEditEventArgs e)
    {
        editing(0);
        gvfee.EditIndex = -1;
        show();
    }
    protected void gv_rowdatabound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string name = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "noticehead"));
            ImageButton imgbtn = (ImageButton)e.Row.FindControl("deletebutton");
            if (imgbtn != null)
            {
                imgbtn.Attributes.Add("onclick", "javasript:return confirm_delete('" + name + "')");
            }
        }
    }
    protected void editing(int id)
    {
        if (id > 0)
        {
            co.connect();
            string stt = "select * from notice where id=" + id;
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtbtitle.Text = dr["noticehead"].ToString();
                    txtbnotice.Text = dr["noticebody"].ToString();
                }
            }
            co.disconnect();
            btninsert.Text = "Update";
        }
        if (id == 0)
        {
            txtbtitle.Text = "";
            txtbnotice.Text = "";
            btninsert.Text = "Add";
        }
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        co.connect();
        if (btninsert.Text == "Add")
        {
            String stt = "insert into notice (noticehead,noticebody) values('" + txtbtitle.Text.Trim() + "','" + txtbnotice.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "DATA INSERTED";
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "DATA NOT INSERTED";
            }
        }
        if (btninsert.Text == "Update")
        {
            String title = txtbtitle.Text.Trim().ToString();
            String notice = txtbnotice.Text.Trim().ToString();
            String stt = "update notice set noticehead='" + title + "',noticebody='" + notice + "' where id='" + gvfee.DataKeys[gvfee.EditIndex].Value + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            int result = cmd.ExecuteNonQuery();
            co.disconnect();
            if (result > 0)
            {
                gvfee.EditIndex = -1;
                show();
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "Data Updated Succesfully";
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = "Data Not Updated Succesfully";
            }
            btninsert.Text = "Insert";
        }
        co.disconnect();
        editing(0);
        show();
    }
    protected void gve_delete(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvevent.DataKeys[e.RowIndex].Values["id"].ToString());
        String stt = "delete from calender where id=" + id;
        String name = showevents(id);
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
            lblmsg2.Text = name + "'s Details Deleted Succesfully";
        else
            lblmsg2.Text = name + "'s Details Deleted Unsuccesfully";
        co.disconnect();
        showevent();
    }
    protected void showevent()
    {
        co.connect();
        String stt = "SELECT * FROM calender";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        co.disconnect();
        if (ds.Tables[0].Rows.Count > 0)
        {
            gvevent.RowStyle.ForeColor = Color.Blue;
            gvevent.DataSource = ds;
            gvevent.DataBind();
        }
    }
    protected String showevents(int id)
    {
        co.connect();
        String name = "";
        string stt = "select * from calender where id=" + id + "";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                name = dr["event"].ToString();
            }
        }
        co.disconnect();
        return (name);
    }
    protected void gve_edit(object sender, GridViewEditEventArgs e)
    {
        gvevent.EditIndex = e.NewEditIndex;
        int id = Convert.ToInt32(gvevent.DataKeys[e.NewEditIndex].Value);
        editingevent(id);
        showevent();
    }
    protected void gve_canceledit(object sender, GridViewCancelEditEventArgs e)
    {
        editingevent(0);
        gvevent.EditIndex = -1;
        showevent();
    }
    protected void gve_rowdatabound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string name = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "event"));
            ImageButton imgbtn = (ImageButton)e.Row.FindControl("deletebutton");
            if (imgbtn != null)
            {
                imgbtn.Attributes.Add("onclick", "javasript:return confirm_delete('" + name + "')");
            }
        }
    }
    protected void editingevent(int id)
    {
        if (id > 0)
        {
            co.connect();
            string stt = "select * from calender where id=" + id;
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    txtbevent.Text = dr["event"].ToString();
                    txtbdate.Text = dr["date"].ToString();
                }
            }
            co.disconnect();
            btnevent.Text = "Update";
        }
        if (id == 0)
        {
            txtbevent.Text = "";
            txtbdate.Text = "";
            btnevent.Text = "Add";
        }
    }
    protected void btnnotice_Click(object sender, EventArgs e)
    {
        panelnotice.Visible = true;
        panelevents.Visible = false;
    }
    protected void btnevents_Click(object sender, EventArgs e)
    {
        panelnotice.Visible = false;
        panelevents.Visible = true;
    }
    protected void btnevent_Click(object sender, EventArgs e)
    {
        co.connect();
        if (btnevent.Text == "Add")
        {
            String stt = "insert into calender (event,date) values('" + txtbevent.Text.Trim() + "','" + txtbdate.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                lblmsg2.ForeColor = Color.Green;
                lblmsg2.Text = "DATA INSERTED";
            }
            else
            {
                lblmsg2.ForeColor = Color.Red;
                lblmsg2.Text = "DATA NOT INSERTED";
            }
        }
        if (btnevent.Text == "Update")
        {
            String events = txtbevent.Text.Trim().ToString();
            String date = txtbdate.Text.Trim().ToString();
            String stt = "update calender set event='" + events + "',date='" + date + "' where id='" + gvevent.DataKeys[gvevent.EditIndex].Value + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            int result = cmd.ExecuteNonQuery();
            co.disconnect();
            if (result > 0)
            {
                gvevent.EditIndex = -1;
                showevent();
                lblmsg2.ForeColor = Color.Green;
                lblmsg2.Text = "Data Updated Succesfully";
            }
            else
            {
                lblmsg2.ForeColor = Color.Red;
                lblmsg2.Text = "Data Not Updated Succesfully";
            }
            btnevent.Text = "Insert";
        }
        co.disconnect();
        editingevent(0);
        showevent();
    }
}