<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="welcome-w3" style="padding-top:5px;">
				<div class="container" >
					<h2 class="tittle" style="padding-bottom:20px">MESSAGE</h2>
                    <cc1:Accordion ID="Accordion1" runat="server">
                  <Panes>
                  <cc1:AccordionPane ID="pnluniform" runat="server">
                  <Header>
                                <div class="schoolname" style="cursor:pointer" >
								        <h4 style="text-align:left;padding-left:15px">Principal's Message</h4>
                                </div>
                  </Header>
                  <Content>
<div style="padding: 10px; border-width: medium; border-color: #FF9900; min-height:300px; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
<div style="float:right;">
<asp:Image ID="imgp" runat="server" ImageAlign="TextTop" Height="250px" Width="300px" ImageUrl="~/images/IMG_0174.jpg" />
<h4 style="text-align:center;">
    <asp:Label ID="lblpname" runat="server" Text=""></asp:Label></h4>
</div>
<asp:Label ID="lblpmsg" runat="server" Text=""></asp:Label>
</p>
</div>
                  </Content>
                  </cc1:AccordionPane>
                  <cc1:AccordionPane ID="pnlcourse" runat="server">
                  <Header>
                 <div class="schoolname" style="cursor:pointer">
								        <h4 style="text-align:left;padding-left:15px">Vice-Principal's Message</h4>
                                        </div>
                  </Header>
                  <Content>
                  <div style="padding: 10px; border-width: medium; min-height:300px; border-color: #FF9900; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
<div style="float:right;">
<asp:Image ID="imgvp" runat="server" ImageAlign="TextTop" Height="250px" Width="300px" ImageUrl="~/images/IMG_0174.jpg" />
<h4 style="text-align:center;">
    <asp:Label ID="lblvpname" runat="server" Text=""></asp:Label></h4>
</div>
<asp:Label ID="lblvpmsg" runat="server" Text=""></asp:Label>
</p>
                  </div>
                  </Content>
                  </cc1:AccordionPane>
                  <cc1:AccordionPane ID="pnlpattern" runat="server">
                  <Header>
                 <div class="schoolname" style="cursor:pointer">
								        <h4 style="text-align:left;padding-left:15px">Manager's Message</h4>
                                        </div>
                  </Header>
                  <Content>
                  <div style="padding: 10px; border-width: medium; min-height:300px; border-color: #FF9900; border-top-style: inherit; border-right-style: dashed; border-bottom-style: dashed; border-left-style: dashed;">
<p>
<div style="float:right;">
<asp:Image ID="imgm" runat="server" ImageAlign="TextTop" Height="250px" Width="300px" ImageUrl="~/images/IMG_0174.jpg" />
<h4 style="text-align:center;">
    <asp:Label ID="lblmname" runat="server" Text=""></asp:Label></h4>
</div>
<asp:Label ID="lblmmsg" runat="server" Text=""></asp:Label>
</p>
                  </div>
                  </Content>
                  </cc1:AccordionPane>
                  </Panes>
                    </cc1:Accordion>

			    </div>
</div>
</asp:Content>

