<%@ Page Title="Image Gallery" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content">
<h2 class="tittle">Our Gallery</h2>
<%--images--%>
<div class="container">
     <asp:Repeater ID="repeatergallery" runat="server">
    <ItemTemplate>
    <a href="image.aspx?id=<%#Eval("id") %>">
                            <div class="col-md-4 w3agile_Projects_grid">
								<div class="w3agile_Projects_image">
                                <div style="background-position: left top;padding-top:90px;padding-right:10px; margin-top: 10px; margin-bottom: 10px;text-align:right; min-height:100px; background-image: url('images/folder.png'); background-repeat: no-repeat;">
                                    <asp:Image ID="Image1" Height="190px" runat="server" ImageUrl='<%#Eval("img") %>' />
                                </div>
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>' ForeColor="#FF9900" Font-Bold="True" Font-Size="X-Large"></asp:Label>
								</div>
							</div>
    </a>
    </ItemTemplate>
    </asp:Repeater>
  </div>

<%--images--%>
</div>
</asp:Content>

