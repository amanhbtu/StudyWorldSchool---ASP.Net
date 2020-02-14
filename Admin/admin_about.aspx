<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_about.aspx.cs" Inherits="Admin_admin_about" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            padding:5px;
            vertical-align:text-top;
            font-size: medium;
            font-weight: bold;
            text-align: right;
        }
        .btn
        {
            margin:5px;
            width:100px;
            border:0;
            color:White;
            background-color:#D95459;
            border-radius:5px;
        }
        .btn:hover
        {
            color:#D95459;
            font-weight:600;
            background-color:inherit;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           
            <div>
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                <ContentTemplate>
                <div class="schoolname" style="cursor:pointer" >
	                   <h4 style="text-align:left;padding-left:15px">About School</h4>
                  </div>
                  <table width="100%">
                  <tr>
                  <td class="style1" width="20%">Email :</td><td width="80%" style="padding: 5px"><asp:TextBox ID="txtbemail" runat="server" Enabled="False"></asp:TextBox></td>
                  </tr>
                  <tr>
                  <td class="style1">Mobile :</td><td style="padding: 5px"><asp:TextBox ID="txtbmobile" runat="server" Enabled="False"></asp:TextBox></td>
                  </tr>
                  <tr>
                  <td class="style1" >About School :</td>
                  <td>
                      <asp:TextBox ID="txtb_abtschool" runat="server" Height="200px" 
                          TextMode="MultiLine" ToolTip="Principal's Message" Width="70%" 
                          Enabled="False"></asp:TextBox>
                  </td>
                  </tr>
                  <tr><td></td><td>
                  <asp:Button ID="btnabtedit" runat="server" Text="Edit" onclick="btnaboutus_Click" class="btn"/>
                  <asp:Button ID="btnabtupdate" runat="server" Text="Update" Visible="false" 
                          onclick="btnabtupdate_Click" class="btn"/>
                      <asp:Label ID="lblmsgabt" runat="server" Text=""></asp:Label>
                  </td></tr>
                  </table>
                </ContentTemplate>
                </asp:UpdatePanel>
                  
                
            </div>
            <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                  <div class="schoolname" style="cursor:pointer" >
						<h4 style="text-align:left;padding-left:15px">Principal's Message</h4>
                  </div>
                  <table width="100%">
                  <tr>
                  <td valign="top" class="style1" width="20%">Principal's Name :</td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbprincipalname" runat="server" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  </tr>
                  <tr>
                  <td valign="top" class="style1" width="20%">Principal's Message : </td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbprincipalmsg" runat="server" TextMode="MultiLine" Height="250px" 
                          ToolTip="Principal's Message" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  <td valign="top" width="30%" align="center">
                          <asp:Image ID="imgprincipal" runat="server" ImageAlign="TextTop" 
                          ImageUrl="~/images/IMG_0174.jpg" Width="90%" ToolTip="Principal's Image" />
                  </td>
                  </tr>
                  <tr>
                  <td></td>
                  <td>
                      <asp:Button ID="btn_pmsg" runat="server" class="btn" 
                          onclick="btn_pmsg_Click" Text="Edit" ToolTip="Click !" />
                      <asp:Label ID="lbl_pmsg" runat="server" Text=""></asp:Label>
                      </td>
                      <td>
                          <asp:FileUpload ID="imgp_upload" runat="server" Visible="False" 
                              ToolTip="Choose Image" />
                      </td>
                      </tr>
                  </table>
                 
                </ContentTemplate>
                <Triggers>
                <asp:PostBackTrigger ControlID="btn_pmsg" />
                </Triggers>
                </asp:UpdatePanel>
                  
            </div>
            <div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                  <div class="schoolname" style="cursor:pointer" >
						<h4 style="text-align:left;padding-left:15px">Vice-Principal's Message</h4>
                  </div>
                  <table width="100%">
                  <tr>
                  <td valign="top" class="style1" width="20%">Vice-Principal's Name :</td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbvprincipalname" runat="server" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  </tr>
                  <tr>
                  <td valign="top" class="style1" width="20%">Principal's Message : </td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbvprincipalmsg" runat="server" TextMode="MultiLine" Height="250px" 
                          ToolTip="Principal's Message" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  <td valign="top" width="30%" align="center">
                          <asp:Image ID="imgvprincipal" runat="server" ImageAlign="TextTop" 
                          ImageUrl="~/images/IMG_0174.jpg" Width="90%" ToolTip="Principal's Image" />
                  </td>
                  </tr>
                  <tr>
                  <td></td>
                  <td>
                      <asp:Button ID="btnvprincipal" runat="server" class="btn" 
                          onclick="btnvprincipal_Click" Text="Edit" ToolTip="Click !" />
                      <asp:Label ID="lbl_vpmsg" runat="server" Text=""></asp:Label>
                
                      </td>
                      <td>
                          <asp:FileUpload ID="imgvp_upload" runat="server" Visible="False" 
                              ToolTip="Choose Image" />
                      </td>
                      </tr>
                  </table>
                </ContentTemplate>
                <Triggers>
                <asp:PostBackTrigger ControlID="btnvprincipal" />
                </Triggers>
                </asp:UpdatePanel>
            </div>
            <div>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                  <div class="schoolname" style="cursor:pointer" >
						<h4 style="text-align:left;padding-left:15px">Manager's Message</h4>
                  </div>
                  <table width="100%">
                  <tr>
                  <td valign="top" class="style1" width="20%">Manager's Name :</td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbmanagername" runat="server" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  </tr>
                  <tr>
                  <td valign="top" class="style1" width="20%">Manager's Message : </td>
                  <td valign="top" width="50%"> 
                      <asp:TextBox ID="txtbmanagermsg" runat="server" TextMode="MultiLine" Height="250px" 
                          ToolTip="Principal's Message" Width="70%" Enabled="False"></asp:TextBox>
                  </td>
                  <td valign="top" width="30%" align="center">
                          <asp:Image ID="imgmanager" runat="server" ImageAlign="TextTop" 
                          ImageUrl="~/images/IMG_0174.jpg" Width="90%" ToolTip="Manager's Image" />
                  </td>
                  </tr>
                  <tr>
                  <td></td>
                  <td>
                      <asp:Button ID="btnmanager" runat="server" class="btn" 
                          onclick="btnmanager_Click" Text="Edit" ToolTip="Click !" />
                      <asp:Label ID="lbl_mmsg" runat="server" Text=""></asp:Label>
                      </td>
                      <td>
                          <asp:FileUpload ID="imgm_upload" runat="server" Visible="False" 
                              ToolTip="Choose Image" />
                      </td>
                      </tr>
                  </table>
                </ContentTemplate>
                <Triggers>
                <asp:PostBackTrigger ControlID="btnmanager" />
                </Triggers>
                </asp:UpdatePanel>
            </div>       
</asp:Content>

