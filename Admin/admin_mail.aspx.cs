using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_admin_mail : System.Web.UI.Page
{
    public Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        showdata();
    }
    protected void showdata()
    {
        showmsg();
        showdeletemsg();
        showsentmsg();
        showunreadmsg();
    }
    protected void showmsg()
    {
        co.connect();
        String stt = "select * from mail where m_folder='inbox'";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeaterinbox.DataSource = ds.Tables[0].DefaultView;
        repeaterinbox.DataBind();
        co.disconnect();
    }
    protected void showsentmsg()
    {
        co.connect();
        String stt = "select * from mail where m_folder='sent'";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeatersent.DataSource = ds.Tables[0].DefaultView;
        repeatersent.DataBind();
        co.disconnect();
    }
    protected void repeatersent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete_sentmail") //breakpoint on this line
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            co.connect();
            String stt = "update mail set m_folder='delete' where id='" + mid + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                }
            }
        }
        co.disconnect();
        showdata();
    }
    protected void repeaterinbox_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete_inboxmail") //breakpoint on this line
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            co.connect();
            String stt = "update mail set m_folder='delete' where id='" + mid +"'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                }
            }
        }
        co.disconnect();
        showdata();
    }
    protected void btn_send_mail_Click(object sender, EventArgs e)
    {
        String email = txtbemail.ToString().Trim().ToLower();
        String sub = txtbsubject.ToString().Trim().ToLower();
        String msg = txtbmsg.ToString().Trim().ToLower();
        //code for sendind email
    }
    protected void showdeletemsg()
    {
        co.connect();
        String stt = "select * from mail where m_folder='delete'";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeaterdelete.DataSource = ds.Tables[0].DefaultView;
        repeaterdelete.DataBind();
        co.disconnect();
    }
    protected void repeaterdelete_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete_deletemail") //breakpoint on this line
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            co.connect();
            String stt = "update mail set m_folder='deleted' where id='" + mid + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                }
            }
        }
        co.disconnect();
        showdata();
    }
    protected void showunreadmsg()
    {
        co.connect();
        String stt = "select * from mail where m_folder !='deleted' and m_read='n'";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeaterunread.DataSource = ds.Tables[0].DefaultView;
        repeaterunread.DataBind();
        co.disconnect();
    }
    protected void repeaterunread_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "delete_unreadmail") //breakpoint on this line
        {
            int mid = Convert.ToInt32(e.CommandArgument);
            co.connect();
            String stt = "update mail set m_folder='delete' where id=" + mid;
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                }
            }
        }
        co.disconnect();
        showdata();
    }
}