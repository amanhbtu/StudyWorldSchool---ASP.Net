using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class image : System.Web.UI.Page
{
    Connection co = new Connection();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            viewimg();
            if(id>0)
            {
            folder_detail();
            }
        }
    }
    void viewimg()
    {
        co.connect();
        String stt = "select * from gallery_detail where folder=" + id;
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeatergallery.DataSource = ds.Tables[0].DefaultView;
        repeatergallery.DataBind();
        co.disconnect();
    }
    protected void folder_detail()
    {
        String stt = "select * from img_folder where id="+id;
        co.connect();
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
              lblfolder.Text=dr["name"].ToString();
                lblabt.Text=dr["detail"].ToString();
            }
        }
        co.disconnect();
    }
}