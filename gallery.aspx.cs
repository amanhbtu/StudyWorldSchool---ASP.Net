using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showimg();
        }
    }
    protected void showimg()
    {
        co.connect();
        String stt = "select * from img_folder;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeatergallery.DataSource = ds.Tables[0].DefaultView;
        repeatergallery.DataBind();
        co.disconnect();
    }
}