using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_admin_about : System.Web.UI.Page
{
    public Connection co = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            school_detail();
        }
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
                txtbemail.Text = dr[3].ToString();
                txtbmobile.Text = dr[2].ToString();
                txtb_abtschool.Text = dr[5].ToString();
                txtbprincipalmsg.Text=dr["principal_msg"].ToString();
                txtbprincipalname.Text=dr["principal_name"].ToString();
                imgprincipal.ImageUrl = dr["principal_img"].ToString();
                txtbvprincipalmsg.Text = dr["vprincipal_msg"].ToString();
                txtbvprincipalname.Text = dr["vprincipal_name"].ToString();
                imgvprincipal.ImageUrl = dr["vprincipal_img"].ToString();
                txtbmanagermsg.Text = dr["manager_msg"].ToString();
                txtbmanagername.Text = dr["manager_name"].ToString();
                imgmanager.ImageUrl = dr["manager_img"].ToString();
                UpdatePanel1.Visible = UpdatePanel3.Visible = UpdatePanel4.Visible =UpdatePanel2.Visible= true;
            }
        }
        co.disconnect();
    }
    protected void btnaboutus_Click(object sender, EventArgs e)
    {
        txtb_abtschool.Enabled = true;
        txtbemail.Enabled = true;
        txtbmobile.Enabled = true;
        btnabtedit.Visible = false;
        btnabtupdate.Visible = true;
    }
    protected void btnabtupdate_Click(object sender, EventArgs e)
    {
        String abt = txtb_abtschool.Text.Trim().ToString();
        String mob = txtbmobile.Text.Trim().ToString();
        String email = txtbemail.Text.Trim().ToLower().ToString();
        co.connect();
        String stt = "update school_detail set contact_no='" + mob + "',email='" + email + "',about_school='" + abt + "'";
        SqlCommand cmd = new SqlCommand(stt, co.con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                lblmsgabt.Text = "Detail's Updated Succesfully";
            }
        }
        co.disconnect();
        txtb_abtschool.Enabled = false;
        txtbemail.Enabled = false;
        txtbmobile.Enabled = false;
        btnabtedit.Visible = true;
        btnabtupdate.Visible = false;
    }
    protected void btn_pmsg_Click(object sender, EventArgs e)
    {
        if (btn_pmsg.Text == "Edit")
        {
            txtbprincipalname.Enabled = true;
            txtbprincipalmsg.Enabled = true;
            imgp_upload.Visible = true;
            lbl_pmsg.Text = "";
            btn_pmsg.Text = "Update";
            UpdatePanel2.Visible = UpdatePanel3.Visible = UpdatePanel4.Visible = false;
        }
        else if (btn_pmsg.Text == "Update")
        {
            String pmsg=txtbprincipalmsg.Text.Trim();
            String pname = txtbprincipalname.Text.Trim();
            if (pimgcheck() == 1)
            {
                imgprincipal.ImageUrl = "~/images/staff_principal" + Path.GetExtension(imgp_upload.FileName);
            }
                co.connect();
                String stt = "update school_detail set principal_name='" + pname + "',principal_msg='" + pmsg + "',principal_img='" + imgprincipal.ImageUrl + "'";
                SqlCommand cmd = new SqlCommand(stt, co.con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        lbl_pmsg.Text = "Detail's Updated Succesfully";
                    }
                }
                co.disconnect();
                school_detail();
                txtbprincipalname.Enabled = false;
                txtbprincipalmsg.Enabled = false;
                imgp_upload.Visible = false;
                btn_pmsg.Text = "Edit";
        }
    }
    protected void btnmanager_Click(object sender, EventArgs e)
    {
        if (btnmanager.Text == "Edit")
        {
            txtbmanagername.Enabled = true;
            txtbmanagermsg.Enabled = true;
            imgm_upload.Visible = true;
            lbl_mmsg.Text = "";
            btnmanager.Text = "Update";
            UpdatePanel1.Visible = UpdatePanel2.Visible = UpdatePanel4.Visible = false;
        }
        else if (btnmanager.Text == "Update")
        {
            String mmsg = txtbmanagermsg.Text.Trim();
            String mname = txtbmanagername.Text.Trim();
            if (mimgcheck() == 1)
            {
                imgmanager.ImageUrl = "~/images/staff_manager" + Path.GetExtension(imgm_upload.FileName);
            }
            co.connect();
            String stt = "update school_detail set manager_name='" + mname + "',manager_msg='" + mmsg + "',manager_img='" + imgmanager.ImageUrl + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbl_mmsg.Text = "Detail's Updated Succesfully";
                }
            }
            co.disconnect();
            school_detail();
            txtbmanagername.Enabled = false;
            txtbmanagermsg.Enabled = false;
            imgm_upload.Visible = false;
            btnmanager.Text = "Edit";
        }
    }
    protected void btnvprincipal_Click(object sender, EventArgs e)
    {
        if (btnvprincipal.Text == "Edit")
        {
            txtbvprincipalname.Enabled = true;
            txtbvprincipalmsg.Enabled = true;
            imgvp_upload.Visible = true;
            lbl_vpmsg.Text = "";
            btnvprincipal.Text = "Update";
            UpdatePanel1.Visible = UpdatePanel3.Visible = UpdatePanel4.Visible = false;
        }
        else if (btnvprincipal.Text == "Update")
        {
            String vpmsg = txtbvprincipalmsg.Text.Trim();
            String vpname = txtbvprincipalname.Text.Trim();
            if (vpimgcheck() == 1)
            {
                imgvprincipal.ImageUrl = "~/images/staff_viceprincipal" + Path.GetExtension(imgvp_upload.FileName);

            }
            co.connect();
            String stt = "update school_detail set vprincipal_name='" + vpname + "',vprincipal_msg='" + vpmsg + "',vprincipal_img='" + imgvprincipal.ImageUrl + "'";
            SqlCommand cmd = new SqlCommand(stt, co.con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbl_vpmsg.Text = "Detail's Updated Succesfully";
                }
            }
            co.disconnect();
            school_detail();
            txtbvprincipalname.Enabled = false;
            txtbvprincipalmsg.Enabled = false;
            imgvp_upload.Visible = false;
            btnvprincipal.Text = "Edit";
        }
    }
    public int pimgcheck()
    {
        if (imgp_upload.HasFile)
        {
            int x = imgp_upload.PostedFile.ContentLength;
            x = x / 1024;
            if (Checkfile(imgp_upload.FileName) == true)
            {
                //to check file format
                if (x < 1024)
                {
                    imgp_upload.SaveAs(Server.MapPath("~/images/staff_principal" + Path.GetExtension(imgp_upload.FileName)));
                    return 1;
                }
                else
                {
                    lbl_pmsg.Text = "Incorrect Size";
                    return 0;
                }
            }
            else
            {
                lbl_pmsg.Text = "Incorrect Format";
                return 0;
            }
        }
        else
        {
            lbl_pmsg.Text = "Choose Image";
            SetFocus(imgp_upload);
            return 0;
        }

    }
    public int vpimgcheck()
    {
        if (imgvp_upload.HasFile)
        {
            int x = imgvp_upload.PostedFile.ContentLength;
            x = x / 1024;
            if (Checkfile(imgvp_upload.FileName) == true)
            {
                //to check file format
                if (x < 1024)
                {
                    imgvp_upload.SaveAs(Server.MapPath("~/images/staff_viceprincipal" + Path.GetExtension(imgvp_upload.FileName)));
                    return 1;
                }
                else
                {
                    lbl_vpmsg.Text = "Incorrect Size";
                    return 0;
                }
            }
            else
            {
                lbl_vpmsg.Text = "Incorrect Format";
                return 0;
            }
        }
        else
        {
            lbl_vpmsg.Text = "Choose Image";
            SetFocus(imgvp_upload);
            return 0;
        }

    }
    public int mimgcheck()
    {
        if (imgm_upload.HasFile)
        {
            int x = imgm_upload.PostedFile.ContentLength;
            x = x / 1024;
            if (Checkfile(imgm_upload.FileName) == true)
            {
                //to check file format
                if (x < 1024)
                {
                    imgm_upload.SaveAs(Server.MapPath("~/images/staff_manager" + Path.GetExtension(imgm_upload.FileName)));
                    return 1;
                }
                else
                {
                    lbl_mmsg.Text = "Incorrect Size";
                    return 0;
                }
            }
            else
            {
                lbl_mmsg.Text = "Incorrect Format";
                return 0;
            }
        }
        else
        {
            lbl_mmsg.Text = "Choose Image";
            SetFocus(imgm_upload);
            return 0;
        }

    }
    public bool Checkfile(String z)
    {
        String ext = Path.GetExtension(z);
        switch (ext)
        {
            case ".gif":
                return true;
            case ".jpg":
                return true;
            case ".png":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }

    }
}