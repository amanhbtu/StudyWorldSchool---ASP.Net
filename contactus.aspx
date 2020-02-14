<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--contact-->
			<div class="contact-w3l">
				<div class="container">
					<div class="col-md-4 contact-left">
						<div class="contct-info">
							<h4>Reach Us</h4>
							<p style="color: #333333; font-weight: 600; font-size: 16px;">
                                Study World School<br />Gomti Nagar,<br />Lucknow 226010
                            </p>
							<ul style="font-weight: 600;">
								<li></li>
								<li>Mobile :<asp:Label ID="lblmob" runat="server" Text="+91 9044440054"></asp:Label></li>
								<li>Telephone :<asp:Label ID="lbltele" runat="server" Text="+91522 228894"></asp:Label></li>
								<li>Email :<asp:HyperLink ID="linkemail" runat="server"><asp:Label ID="lblemail" runat="server" Text="studyworldschool@mail.co"></asp:Label></asp:HyperLink></li>
							</ul>
						</div>
					</div>
					<div class="col-md-8 contact-left cont">
						<div class="contct-info" style="padding-bottom:15px">
							<h4>Mail Us</h4>
							<form action="#" method="post">
								<div class="row">
									<div class="col-md-6 row-grid">
									<asp:TextBox ID="txtbname" runat="server" required="" Placeholder="Your Name" MaxLength="50"></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
											<asp:TextBox ID="txtbemail" runat="server" required="" Text="" placeholder="Email Address" MaxLength="50"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtbemail" ErrorMessage="Invalid Email Address" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="row">
									<div class="col-md-6 row-grid">
									<asp:TextBox ID="txtbsub" runat="server" required="" Text="" placeholder="Subject" MaxLength="100"></asp:TextBox>
									</div>
										<div class="col-md-6 row-grid">
									<asp:TextBox ID="txtbmob" runat="server" required="" placeholder="Mobile Number" MaxLength="10"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="rev_mobile" runat="server" ErrorMessage="Invalid Mobile Number" ValidationExpression="^(9|8|7)\d{9}$" ControlToValidate="txtbmob" Display="Dynamic"></asp:RegularExpressionValidator>
                                     <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtbmob" FilterType="Numbers" ValidChars='+'></cc1:FilteredTextBoxExtender>
									</div>
									<div class="clearfix"></div>
								</div>
								<asp:TextBox ID="txtbmsg" runat="server" required="" Text="" placeholder="Your Message For Us" TextMode="MultiLine"></asp:TextBox>
								<asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                                    onclick="btnsubmit_Click"/>
								<input type="reset" value="Clear" />
							</form>
						    <br />
						    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                                ForeColor="Red"></asp:Label>
						</div>
					</div>
                    <div class="contact-bottom"">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.4374565686244!2d80.95091204980403!3d26.921342883041035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957af7706cc63%3A0x4abd3c6e0bbd415!2sQpath+Info+Solution!5e0!3m2!1sen!2s!4v1479756548429" allowfullscreen></iframe>
					</div>
				</div>
			</div>
			<!--contact-->
</asp:Content>

