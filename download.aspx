<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="download.aspx.cs" Inherits="download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style="min-height:250px;" >
<div class="schoolname" style="cursor:pointer" >
<h4 style="text-align:left;padding-left:15px">Download's Links</h4>
</div>
<div style="padding:10px 10px 20px 10px">
     <asp:Repeater ID="repeaterlink" runat="server">
    <ItemTemplate>
    <div style="padding: 0px 10% 0px 25%; font-size:x-large:"> 
     <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%#Eval("link") %>'>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("title") %>' Font-Size="20px" Font-Bold="True"></asp:Label>
     </asp:HyperLink>
    </div>
    </ItemTemplate>
    </asp:Repeater>
    </div>
  </div>
</asp:Content>

