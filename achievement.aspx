<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="achievement.aspx.cs" Inherits="achievement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css" >
.slider{
    width:100%;
    overflow:hidden;
    position:relative;
    margin:0;
}
.edge{
    left:0;
    right:0;
    top:0;
    bottom:0;
    position:absolute;
    height:100%;
    display:block;
}

.slider ul{
    overflow:hidden;
    width:1000%;
    margin:0;
}
.slider li{
    font-size:13px;
    font-weight:600;
    list-style:none;
    display:inline-block;
    padding:0 20px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3 class="tittle">Achievements</h3>

<script type="text/javascript">
    // polyfill
    window.requestAnimationFrame = (function () {
        return window.requestAnimationFrame ||
          window.webkitRequestAnimationFrame ||
          window.mozRequestAnimationFrame ||
          function (callback) {
              window.setTimeout(callback, 1000 / 60);
          };
    })();
    var speed = 5000;
    (function currencySlide() {
        var currencyPairWidth = $('.slideItem:first-child').outerWidth();
        $(".slideContainer").animate({ marginLeft: -currencyPairWidth }, speed, 'linear', function () {
            $(this).css({ marginLeft: 0 }).find("li:last").after($(this).find("li:first"));
        });
        requestAnimationFrame(currencySlide);
    })();
</script>
<div class="statistics-w3" style="padding-top:0px">
							<div class="container" style="padding-top:0px">
                                <div class="statistics-grids">
                                <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Our XII Toppers</h4>
                                </div>
                                    <div class='slider'>
                                        <div class="edge"></div>
                                    <ul class="slideContainer" id="Ul1">
                                    
                                    <asp:Repeater ID="repeater_xii" runat="server">
                                    <ItemTemplate>
                                    <li class="slideItem" >
                                    <div style="float: left;padding:5px; width: 150px; height: 180px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img") %>' Width="100%" Height="75%" BorderColor="Black" BorderStyle="Double" BorderWidth="1px"></asp:Image><br />
                                    <span style="color: #FF0000;">
                                    <center>
                                    <%#Eval("name") %><br />
                                    <%#Eval("percentage") %></center>
                                    </span>
                                    </div>
                                    </li>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                    </ul>
                                    </div>

                                </div>
                            <div class="clearfix"></div>
                                <div class="statistics-grids">
                                <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Our X Toppers</h4>
                                </div>
                                    <div class='slider'>
                                        <div class="edge"></div>
                                    <ul class="slideContainer" id="Ul2">
                                    
                                    <asp:Repeater ID="repeater_x" runat="server">
                                    <ItemTemplate>
                                    <li class="slideItem" >
                                    <div style="float: left;padding:5px; width: 150px; height: 180px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img") %>' Width="100%" Height="75%" BorderColor="Black" BorderStyle="Double" BorderWidth="1px"></asp:Image><br />
                                    <span style="color: #FF0000;">
                                    <center>
                                    <%#Eval("name") %><br />
                                    <%#Eval("percentage") %></center>
                                    </span>
                                    </div>
                                    </li>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                    </ul>
                                    </div>

                                </div>
                            <div class="clearfix"></div>
                            <div class="statistics-grids">
                                <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Our Awards</h4>
                                </div>
                                    <asp:Repeater ID="repeater_awards" runat="server">
                                    <ItemTemplate>
                                    <div style="float: left;padding:5px;margin:5px; width: 200px; height: 300px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img") %>' Width="100%" Height="75%" BorderColor="Black" BorderStyle="Double" BorderWidth="1px"></asp:Image><br />
                                    <span style="color: #FF0000;">
                                    <center>
                                    <h4><%#Eval("name") %></h4>
                                    ( <%#Eval("session") %> )</center>
                                    </span>
                                    </div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                              <div class="clearfix"></div>
                            </div>
</div>
</asp:Content>

