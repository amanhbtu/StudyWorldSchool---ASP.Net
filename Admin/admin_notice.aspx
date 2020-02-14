<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_notice.aspx.cs" Inherits="Admin_admin_notice" %>

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
    <asp:Button ID="btnnotice" runat="server" Text="Notice" 
        onclick="btnnotice_Click" />
    <asp:Button ID="btnevents" runat="server" Text="Events" 
        onclick="btnevents_Click" />
    <asp:Panel ID="panelnotice" runat="server">
    <table width="100%">
    <tr>
    <td colspan="2" class="style6">
    <h1 align="center" style="text-align: center; background-color: #D95459" 
            class="fa-inverse">Notice Details</h1>
    <br />
    </td>
    </tr>

    <tr>
    <td colspan="2">
        <table width="100%">
        <tr>
        <td class="style1">
           Notice Title :
        </td>
        <td>
            <asp:TextBox ID="txtbtitle" runat="server" Width="50%" ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtbtitle" ErrorMessage="Please Enter Title" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        
        <tr>
        <td class="style1">
            Notice :
        </td>
        <td>
            <asp:TextBox ID="txtbnotice" runat="server" Width="50%" Height="100px" 
                ValidationGroup="form" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtbnotice" ErrorMessage="Please Enter Notice" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td></td><td>
            <asp:Button ID="btninsert" runat="server" Text="Add" 
                onclick="btninsert_Click" /></td>
                
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </tr>
        </table>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <hr />
       <asp:GridView ID="gvfee" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
                            onrowdeleting="gv_delete" onrowediting="gv_edit"
                                onrowcancelingedit="gv_canceledit" onrowdatabound="gv_rowdatabound" 
                         Width="100%" AllowPaging="True" BackColor="#CCCCCC" 
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

        
        <asp:TemplateField HeaderText="Title">
        
<ItemTemplate>
<asp:Label ID="lbltitle" runat="server" Text='<%#Eval("noticehead") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Notice">
       
<ItemTemplate>
<asp:Label ID="lblnotice" runat="server" Text='<%#Eval("noticebody") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Date">
       
<ItemTemplate>
<asp:Label ID="lblpost" runat="server" Text='<%#Eval("datetime") %>'/>
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
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="panelevents" runat="server">
    <table width="100%">
    <tr>
    <td colspan="2" class="style6">
    <h1 align="center" style="text-align: center; background-color: #D95459" 
            class="fa-inverse">Events Details</h1>
    <br />
    </td>
    </tr>

    <tr>
    <td colspan="2">
        <table width="100%">
        <tr>
        <td class="style1">
           Event :
        </td>
        <td>
            <asp:TextBox ID="txtbevent" runat="server" Width="50%" ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtbevent" ErrorMessage="Please Enter Event" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        
        <tr>
        <td class="style1">
            Date :
        </td>
        <td>
            <asp:TextBox ID="txtbdate" runat="server"
                ValidationGroup="form"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtbdate" ErrorMessage="Please Choose Date" 
                SetFocusOnError="True" ValidationGroup="form"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr><td></td><td>
            <asp:Button ID="btnevent" runat="server" Text="Add" 
                onclick="btnevent_Click" /></td>
                
        <asp:Label ID="lblmsg2" runat="server"></asp:Label>
                </tr>
        </table>
    </td>
    </tr>
    <tr>
    <td colspan="2">
    <hr />
       <asp:GridView ID="gvevent" DataKeyNames="id" runat="server" AutoGenerateColumns="False"
                            onrowdeleting="gve_delete" onrowediting="gve_edit"
                                onrowcancelingedit="gve_canceledit" onrowdatabound="gve_rowdatabound" 
                         Width="100%" AllowPaging="True" BackColor="#CCCCCC" 
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

        <asp:TemplateField HeaderText="Event">
       
<ItemTemplate>
<asp:Label ID="lblevent" runat="server" Text='<%#Eval("event") %>'/>
</ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Date">
       
<ItemTemplate>
<asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'/>
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
    </td>
    </tr>
    </table>
    </asp:Panel>

</div>
</asp:Content>

