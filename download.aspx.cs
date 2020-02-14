using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class download : System.Web.UI.Page
{
    Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showlinks();
        }
    }
    protected void showlinks()
    {
        co.connect();
        String stt = "select * from download order by date_time desc;";
        SqlDataAdapter da = new SqlDataAdapter(stt, co.con);
        DataSet ds = new DataSet();
        da.Fill(ds, "study_world");
        repeaterlink.DataSource = ds.Tables[0].DefaultView;
        repeaterlink.DataBind();
        co.disconnect();
    }
}