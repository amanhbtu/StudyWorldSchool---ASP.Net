<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_staff.aspx.cs" Inherits="Admin_admin_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript"">
    function confirm_delete(ename) {
        var result = confirm('Are You Sure To Delete ' + ename + ' Permanantly');
        if (result) {
            return true;
        }
        else {
            return false;
        }
    }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
    <table width="100%">
    
    <tr>
    <td colspan="2" class="style6">
    <h1 align="center" style="text-align: center; background-color: #D95459" 
            class="fa-inverse">Staff Details</h1>
    <br />
    </td>
    </tr>

    <tr>
    <td colspan="2">
        <table width="100%">
        <tr>
        <td class="style1" width="30%">Staff Type :
        </td>
        <td class="style5" width="40%">
            <asp:DropDownList ID="dropdtype" runat="server" Width="150px" 
                ValidationGroup="form">
            <asp:ListItem>---Select---</asp:ListItem>
            <asp:ListItem>TECHNICAL</asp:ListItem>
            <asp:ListItem>MANAGEMENT</asp:ListItem>
            <asp:ListItem>TEACHING</asp:ListItem>
            <asp:ListItem>NON-TECHNICAL</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lbltype" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td rowspan="8" width="30%">
            <asp:Image ID="imageimg" runat="server" Height="120px" Width="110px" />
            <asp:FileUpload ID="fileuimg" runat="server" />
            <asp:Button ID="btnimgupload" runat="server" Text="Upload" 
                ValidationGroup="imgupload" Height="28px" onclick="btnimgupload_Click" />
                <asp:Label ID="lblpic" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
        <td class="style1">
           Post In School :
        </td>
        <td>
            <asp:TextBox ID="txtbpost" runat="server" Width="150px" ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtbpost" ErrorMessage="Please Enter Post" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        
        <tr>
        <td class="style1">
            Staff Name :
        </td>
        <td>
            <asp:TextBox ID="txtbname" runat="server" Width="150px" ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtbname" ErrorMessage="Please Enter Name" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td valign="top" class="style1">
            Father's Name :
        </td>
        <td class="style5">
            <asp:TextBox ID="txtbfname" runat="server"
                Width="150px" ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtbfname" 
                ErrorMessage="Please Enter  Father's Name" SetFocusOnError="True" 
                ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td valign="top" class="style1">
            Date of Birth :
        </td>
        <td>
            <asp:TextBox ID="txtbdob" runat="server"
                Width="150px" ValidationGroup="form"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(DD/MM/YYYY or DD-MM-YYYY) only" 
                
                ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$" 
                ControlToValidate="txtbdob" ValidationGroup="form"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
        <td class="style1">
            Mobile Number :
        </td>
        <td>
            <asp:TextBox ID="txtbmobile" runat="server" Width="150px" 
                ValidationGroup="form"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtbmobile" ErrorMessage="Enter Only Valid Number" 
                ValidationExpression="^[7-9][0-9]{9}$" ValidationGroup="form"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
        <td class="style1">
             Gender :
        </td>
        <td>
            <asp:RadioButtonList ID="radbgender" runat="server" 
                RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="lblgender" runat="server" ForeColor="Red"></asp:Label>
        </td>
        </tr>
        <tr>
        <td class="style1">
            Adress :
        
        </td>
        <td>
            <asp:TextBox ID="txtbaddress" runat="server" TextMode="MultiLine" 
                ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtbaddress" 
                ErrorMessage="Please Enter  Address" SetFocusOnError="True" 
                ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        
        <tr>
        <td></td>
        <td>
            <asp:Button ID="btninsert" runat="server" Text="Insert" 
                onclick="btninsert_Click" Width="73px" ValidationGroup="form" />
               <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
        </tr>
        </table>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <hr />
       <asp:Panel ID="panel2" runat="server" class="fullw" style="text-align: left">
        <asp:GridView ID="gvfee" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
                            onrowdeleting="gv_delete" onrowediting="gv_edit"
                                onrowcancelingedit="gv_canceledit" onrowdatabound="gv_rowdatabound" 
                         onrowupdating="gv_update" Width="100%" AllowPaging="True" BackColor="#CCCCCC" 
                                BorderColor="#999999" BorderStyle="Solid" 
                BorderWidth="3px" CaptionAlign="Top" 
                                CellPadding="4" CellSpacing="2" 
                EnableModelValidation="True" Font-Bold="False" 
                                ForeColor="Black"
                ShowFooter="False">

        <Columns>
        
        <asp:TemplateField HeaderText="Tools">
        <ItemTemplate>
        <asp:ImageButton ID="editbutton" runat="server" CommandName="edit" ToolTip="Edit" Height="20px" Width="20px" ImageUrl="~/Admin/images/Edit.jpg" CausesValidation="False" />
        <asp:ImageButton ID="deletebutton" runat="server" CommandName="delete" ToolTip="Delete" Height="20px" Width="20px" ImageUrl="~/Admin/images/delete.jpg" CausesValidation="False" />
        </ItemTemplate>
        <EditItemTemplate>
<asp:ImageButton ID="cancelbutton" runat="server" CommandName="cancel" ImageUrl="~/Admin/images/Cancel.jpg" ToolTip="Cancel" Height="20px" Width="20px" CausesValidation="False" />
        </EditItemTemplate>
        </asp:TemplateField>

        
        <asp:TemplateField HeaderText="Name">
        
<ItemTemplate>
<asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Type">
       
<ItemTemplate>
<asp:Label ID="lbltype" runat="server" Text='<%#Eval("type") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Post">
       
<ItemTemplate>
<asp:Label ID="lblpost" runat="server" Text='<%#Eval("post") %>'/>
</ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Father's Name">
        
<ItemTemplate>
<asp:Label ID="lblfname" runat="server" Text='<%#Eval("fname") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Gender">
        
<ItemTemplate>
<asp:Label ID="lblgender" runat="server" Text='<%#Eval("gender") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="DOB">
        
<ItemTemplate>
<asp:Label ID="lbldob" runat="server" Text='<%#Eval("dob") %>'/>
</ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Mobile">
        
<ItemTemplate>
<asp:Label ID="lblmobile" runat="server" Text='<%#Eval("mobile") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        
        <asp:TemplateField HeaderText="Address">
        
<ItemTemplate>
<asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        
        <asp:TemplateField HeaderText="Image">
        
<ItemTemplate>
 <asp:Image ID="img" runat="server" Height="50px" 
                        ImageUrl='<%#Eval("staff_img") %>' Width="50px" />
</ItemTemplate>
        </asp:TemplateField>

</Columns>

                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                             <RowStyle BackColor="White" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

                         </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </div>

</asp:Content>

