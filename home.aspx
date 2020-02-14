<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.link
{
    float:right;
    text-decoration:none;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--welcome-->
	        <div class="notice">
            <marquee direction="left">
            <asp:BulletedList ID="listnotice" runat="server">
            </asp:BulletedList></marquee>
            </div>

          
            <!--statistics--->
			<div class="welcome-w3" style="padding-top:5px;">
				<div class="container" >
					<h2 class="tittle">Welcome To Our School</h2>
                    <div class="statistics-grids">
				
						            <div class="col-md-3 statistics-grid">
										
                                        <div class="port-7 effect-2">
                                            <div class="schoolname" >
								        <h4 align="center">PRINCIPAL</h4>
                                        </div>
								            <div class="box-res">
                                    <asp:Image ID="Image3" runat="server" class="img-responsive" 
                                        ImageUrl="~/images/IMG_0174.jpg" Width="100%" Height="100%"/>
								</div>
                                            <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="Label3" runat="server" Text="REV. FR. ALWYN MORAS"></asp:Label>
                                        </h4>
                                        <div class="link"><a href="~/message.aspx">View Message&rarr;</a></div>
                                </div>
                                        </div>
                                    </div>
									<div class="col-md-3 statistics-grid">
										
                                        <div class="port-7 effect-2">
                                            <div class="schoolname" >
								        <h4 align="center">VICE PRINCIPAL</h4>
                                        </div>
								            <div class="box-res">
                                    <asp:Image ID="imgvp" runat="server" class="img-responsive" 
                                        ImageUrl="~/images/vice-principal1.jpg" Height="100%" Width="100%" />
								</div>
                                            <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="lblvp" runat="server" Text="REV. FR. ALWYN MORAS"></asp:Label>
                                     </h4>
                                     <div class="link"><a href="~/message.aspx">View Message&rarr;</a></div>
                                </div>
                                        </div>
                                        
						            </div>
									<div class="col-md-3 statistics-grid">
										<div class="schoolname" >
								        <h4 align="center">OUR X TOPPERS</h4>
                                        </div>
                                        <!--Slider--->
                                     <asp:Repeater ID="repeater_x" runat="server">
                                     <ItemTemplate>
                                        <div class="mySlides1"  align="center">
                                            <asp:Image ID="imgXslide1" ImageUrl='<%#Eval("img") %>' 
                                            runat="server" style="width:140px; height:180px;"/><br />
                                            <asp:HyperLink ID="HyperLink1" style="float:left;padding-left:50px;" runat="server" onclick="plusDivsXII(-1)">Prev</asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink2" style="float:right;padding-right:50px;" runat="server"  onclick="plusDivsXII(1)">Next</asp:HyperLink>
                                            <br/>
                                            <asp:Label ID="lblxiiname" CssClass="lbl_toppers" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                                            <asp:Label ID="lblxiiper" runat="server" Text='<%#Eval("percentage") %>'></asp:Label>
                                       </div>
                                    </ItemTemplate>
                                   </asp:Repeater>
                                     <script type="text/javascript">
                                         var XslideIndex = 1;
                                         carouselX();
                                         function plusDivsX(n) {
                                             showDivsX(XslideIndex += n);
                                         }
                                         function carouselX() {
                                             var i;
                                             var x = document.getElementsByClassName("mySlides1");
                                             for (i = 0; i < x.length; i++) {
                                                 x[i].style.display = "none";
                                             }
                                             XslideIndex++;
                                             if (XslideIndex > x.length) { XslideIndex = 1 }
                                             x[XslideIndex - 1].style.display = "block";
                                             setTimeout(carouselX, 5000);
                                         }
                                         function showDivsX(n) {
                                             var i;
                                             var x = document.getElementsByClassName("mySlides1");
                                             if (n > x.length) { XslideIndex = 1 }
                                             if (n < 1) { XslideIndex = x.length }
                                             for (i = 0; i < x.length; i++) {
                                                 x[i].style.display = "none";
                                             }
                                             x[XslideIndex - 1].style.display = "block";
                                         }
</script>
                                    <!--Slider--->
									</div>
									<div class="col-md-3 statistics-grid">
										<div class="schoolname" >
								        <h4 align="center">OUR XII TOPPERS</h4>
                                        </div>
                                         <!---slider--->
                                <asp:Repeater ID="repeater_xii" runat="server">
                                <ItemTemplate>
                                        <div class="mySlides2"  align="center">
                                            <asp:Image ID="imgxiislide" ImageUrl='<%#Eval("img") %>' 
                                            runat="server" style="width:140px; height:180px;"/><br />
                                            <asp:HyperLink ID="HyperLink1" style="float:left;padding-left:50px;" runat="server" onclick="plusDivsXII(-1)">Prev</asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink2" style="float:right;padding-right:50px;" runat="server"  onclick="plusDivsXII(1)">Next</asp:HyperLink>
                                            <br/>
                                            <asp:Label ID="lblxiiname" CssClass="lbl_toppers" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                                            <asp:Label ID="lblxiiper" runat="server" Text='<%#Eval("percentage") %>'></asp:Label>
                                        </div>

                                </ItemTemplate>
                                </asp:Repeater>
                                <script type="text/javascript">
                                    var XIIslideIndex = 1;
                                    carouselXII();
                                    function plusDivsXII(n) {
                                        showDivsXII(XIIslideIndex += n);
                                    }
                                    function carouselXII() {
                                        var i;
                                        var x = document.getElementsByClassName("mySlides2");
                                        for (i = 0; i < x.length; i++) {
                                            x[i].style.display = "none";
                                        }
                                        XIIslideIndex++;
                                        if (XIIslideIndex > x.length) { XIIslideIndex = 1 }
                                        x[XIIslideIndex - 1].style.display = "block";
                                        setTimeout(carouselXII, 5000);
                                    }
                                    function showDivsXII(n) {
                                        var i;
                                        var x = document.getElementsByClassName("mySlides2");
                                        if (n > x.length) { XIIslideIndex = 1 }
                                        if (n < 1) { XIIslideIndex = x.length }
                                        for (i = 0; i < x.length; i++) {
                                            x[i].style.display = "none";
                                        }
                                        x[XIIslideIndex - 1].style.display = "block";
                                    }
</script>
                                <!---slider--->
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
		    <!--statistics--->
            <!--vision-->
				<div class="what-w3" style="padding-top: 10px; padding-bottom: 0px;">
					<div class="container">
                    <div class="footer-grids">
						<div class="col-md-4 footer-grid">
                        <h4 style="color: #CC6600;">Parental Login</h4>
                        <form action="#" method="post">
								<asp:TextBox ID="txtbuserid" runat="server" required="" placeholder="User ID"></asp:TextBox>
							    <br /><br />
								<asp:TextBox ID="txtbpass" runat="server" placeholder="Password" required=""></asp:TextBox>
                                <br /><br />
							    <asp:Button ID="btnsubmit" runat="server" Text="Login"/><asp:HyperLink ID="linkforget" runat="server">Forget Password ?</asp:HyperLink><br />
                               <asp:Label ID="lbllogmsg" runat="server" Text=""></asp:Label>
                               </form>
                               <div class="login"  style="padding-top:15px; padding-left: 15px;">
                               <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc" style="color:Black;">
                                 <asp:ListItem>Use Student Registration Id as your User ID.</asp:ListItem>
                                 <asp:ListItem>Use 123456 as your default Password.</asp:ListItem>
                                 <asp:ListItem>If you have change your default password and forget new one then go to forget password</asp:ListItem>
                              </asp:BulletedList>
                              </div>
                        </div>
                        <div class="col-md-4 footer-grid">
                        <h4 style="color: #CC6600;">Notice</h4>
                            <div class="noticehome">
                            <asp:BulletedList ID="bulletlnotice" runat="server" BulletStyle="Disc" style="color:Black;">
                            
                            </asp:BulletedList>
                            </div>
						</div>
						<div class="col-md-4 footer-grid">
                        <h4 style="color: #CC6600;">Events Calender</h4>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                            <ContentTemplate>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                                Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                                ondayrender="Calendar1_DayRender1" 
                                onselectionchanged="Calendar1_SelectionChanged" Width="100%">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                    Height="8pt"/>
                                <DayStyle BackColor="#CCCCCC" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                                    Font-Size="12pt" ForeColor="White" Height="12pt" />
                                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            </asp:Calendar>
						    
                            <asp:TextBox ID="txtbcalen" runat="server" TextMode="MultiLine" Width="100%" 
                                    BackColor="Silver" BorderColor="Black" Height="100px" Font-Bold="True" 
                                    Font-Size="16px" ReadOnly="True"></asp:TextBox>
						</ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
						<div class="clearfix"></div>
                        <br />
					</div>
					</div>
				</div>
			<!--vision-->
</asp:Content>

