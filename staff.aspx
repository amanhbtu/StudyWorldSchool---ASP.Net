<%@ Page Title="Staff" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h3 class="tittle">Our Staff</h3>
<div class="statistics-w3" style="padding-top:0px">
							<div class="container" style="padding-top:0px">
                                <div class="statistics-grids">
                                <div class="schoolname">
								<h4 style="text-align:left;padding:7px;">Management Staff</h4>
                                </div>
                                <div class="clearfix"></div>
                                <asp:Repeater ID="repeater_management" runat="server">
                                    <ItemTemplate>
                                    <div class="col-md-3 statistics-grid">
                                    <div class="box-res">
                                    <asp:Image ID="Image3" runat="server" class="img-responsive" 
                                        ImageUrl='<%#Eval("staff_img") %>' Width="100%" Height="100%"/>
								</div>
                                    <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                    </h4>
                                    <h5 style="text-align:center;font-weight:600;">( <%#Eval("post") %> )</h5>
                                </div>
									</div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            <div class="clearfix"></div>
                                <div class="statistics-grids">
                                    <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Teaching Staff</h4>
                                </div>
                                <div class="clearfix"></div>
                                    <asp:Repeater ID="repeater_teaching" runat="server">
                                    <ItemTemplate>
                                    <div class="col-md-3 statistics-grid">
                                    <div class="box-res">
                                    <asp:Image ID="Image3" runat="server" class="img-responsive" 
                                        ImageUrl='<%#Eval("staff_img") %>' Width="90%" Height="100%"/>
								</div>
                                    <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </h4>
                                        <h5 style="text-align:center;font-weight:600;">( <%#Eval("post")%> )</h5>
                                </div>
									</div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            <div class="clearfix"></div>
                                <div class="statistics-grids">
                                    <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Technical Staff</h4>
                                </div>
                               <div class="clearfix"></div>
                                    <asp:Repeater ID="repeater_technical" runat="server">
                                    <ItemTemplate>
                                    <div class="col-md-3 statistics-grid">
                                    <div class="box-res">
                                    <asp:Image ID="Image3" runat="server" class="img-responsive" 
                                        ImageUrl='<%#Eval("staff_img") %>' Width="90%" Height="100%"/>
								</div>
                                    <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </h4>
                                        <h5 style="text-align:center;font-weight:600;">( <%#Eval("post")%> )</h5>
                                </div>
									</div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            <div class="clearfix"></div>
                                <div class="statistics-grids">
                                    <div class="schoolname" >
								<h4 style="text-align:left;padding:7px;">Non-Technical Staff</h4>
                                </div>
                                <div class="clearfix"></div>
                                    <asp:Repeater ID="repeater_nonteaching" runat="server">
                                    <ItemTemplate>
                                    <div class="col-md-3 statistics-grid">
                                    <div class="box-res">
                                    <asp:Image ID="Image3" runat="server" class="img-responsive" 
                                        ImageUrl='<%#Eval("staff_img") %>' Width="90%" Height="100%"/>
								</div>
                                    <div class="image-box">
                                    <h4 class="lbl_abtschool">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                    </h4>
                                    <h5 style="text-align:center;font-weight:600;">( <%#Eval("post")%> )</h5>
                                </div>
									</div>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            <div class="clearfix"></div>
                            </div>
</div>
</asp:Content>

