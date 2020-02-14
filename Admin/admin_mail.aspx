<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="admin_mail.aspx.cs" Inherits="Admin_admin_mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--banner-->	
		     <div class="banner">
		    	<h2>
				<a href="admin_home.aspx">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>Inbox</span>
				</h2>
		    </div>
		<!--//banner-->
 	<!--grid-->
 	 <div class="inbox-mail">
	<div class="col-md-4 compose">
		<form action="#" method="GET">
                <div class="input-group input-group-in">
                    <input type="text" name="search" class="form-control2 input-search" placeholder="Search..."/>
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div><!-- Input Group -->
            </form>
            
    <nav class="nav-sidebar">
    	<ul class="nav tabs">
          <li class=""><a href="#tab0" data-toggle="tab"><h2>Compose</h2></a></li>
          <li class="active"><a href="#tab1" data-toggle="tab"><i class="fa fa-inbox"></i>Inbox <span><asp:Label ID="lblunreadmsg" runat="server" Text="0"></asp:Label></span><div class="clearfix"></div></a></li>
          <li class=""><a href="#tab2" data-toggle="tab"><i class="fa fa-paper-plane-o"></i>Sent</a></li>
          <li class=""><a href="#tab3" data-toggle="tab"><i class="fa fa-envelope-o"></i>Unread</a></li>   
          <li class=""><a href="#tab4" data-toggle="tab"><i class="fa fa-trash-o"></i>Delete</a></li>                              
		</ul>
	</nav>
		
</div>
<!-- tab content -->
<div class="col-md-8 tab-content tab-content-in">
<div class="tab-pane text-style" id="tab0">
  <!--grid-->
 	<div class="grid-form">
 		<div class="grid-form1">
 		<h3 id="forms-example" class="">Compose Mail</h3>
  <div class="form-group">
    <label for="exampleInputEmail1">To :</label>
      <asp:TextBox ID="txtbemail" runat="server" class="form-control" placeholder="Email address"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Subject :</label>
      <asp:TextBox ID="txtbsubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Messgae :</label>
      <asp:TextBox ID="txtbmsg" runat="server" TextMode="MultiLine" class="form-control" placeholder="Message"></asp:TextBox>
  </div>
  <asp:Button ID="btn_send_mail" runat="server" Text="Send" onclick="btn_send_mail_Click" />
  
</div>
</div>
<!----->
</div>
<div class="tab-pane active text-style" id="tab1">
  <div class="inbox-right">
         	
            <div class="mailbox-content">
                <table class="table">
                    <tbody>
                        <asp:Repeater ID="repeaterinbox" runat="server" 
                            onitemcommand="repeaterinbox_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            <td class="march" style="width:30%;">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td style="width:5%;">
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Unread"></asp:Label></span>    
                            </td>
                             <td style="width:5%;">
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_inboxmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            
                            <td class="march">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td>
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text='<%#Eval("m_read") %>'></asp:Label></span>    
                            </td>
                            <td>
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_inboxmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </AlternatingItemTemplate>
                        </asp:Repeater>
                        
                    </tbody>
                </table>
               </div>
            </div>
</div>

<div class="tab-pane text-style" id="tab2">
  <div class="inbox-right">
         	
            <div class="mailbox-content">
                <table class="table">
                    <tbody>
                        <asp:Repeater ID="repeatersent" runat="server" 
                            onitemcommand="repeatersent_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            <td class="march" style="width:30%;">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td style="width:5%;">
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Unread"></asp:Label></span>    
                            </td>
                             <td style="width:5%;">
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_sentmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            
                            <td class="march">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td>
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Read"></asp:Label></span>    
                            </td>
                            <td>
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_sentmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </AlternatingItemTemplate>
                        </asp:Repeater>
                        
                    </tbody>
                </table>
               </div>
            </div>
</div>
<div class="tab-pane text-style" id="tab3">
  <div class="inbox-right">
         	
            <div class="mailbox-content">
                <table class="table">
                    <tbody>
                        <asp:Repeater ID="repeaterunread" runat="server" 
                            onitemcommand="repeaterunread_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            <td class="march" style="width:30%;">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td style="width:5%;">
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Unread"></asp:Label></span>    
                            </td>
                             <td style="width:5%;">
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_unreadmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            
                            <td class="march">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td>
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Read"></asp:Label></span>    
                            </td>
                            <td>
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_unreadmail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </AlternatingItemTemplate>
                        </asp:Repeater>
                        
                    </tbody>
                </table>
               </div>
            </div>
</div>
<div class="tab-pane text-style" id="tab4">
  <div class="inbox-right">
         	
            <div class="mailbox-content">
                <table class="table">
                    <tbody>
                        <asp:Repeater ID="repeaterdelete" runat="server" onitemcommand="repeaterdelete_ItemCommand">
                        <ItemTemplate>
                        <tr>
                            <td class="table-text" style="width:60%; color: #000000; font-weight: bold;">
                            	<h3><asp:Label ID="lblsender" runat="server" Text='<%#Eval("name") %>' ForeColor="#337AB7" Font-Size="Medium" Font-Bold="True"></asp:Label></h3>
                                <p><asp:Label ID="lblmsg" runat="server" Text='<%#Eval("sub") %>' ForeColor="#333333" Font-Size="Small"></asp:Label></p>
                            </td>
                            <td class="march" style="width:30%;">
                               <asp:Label ID="Label5" runat="server" ForeColor="#337AB7" Text='<%#Eval("datetime") %>' Font-Bold="True" Font-Size="Small"></asp:Label>
                            </td>
                          
                             <td style="width:5%;">
                                 <span class="fam"><asp:Label ID="lblread" runat="server" Text="Read"></asp:Label></span>    
                            </td>
                             <td style="width:5%;">
                                <asp:LinkButton ID="linkbdel" runat="server" CommandArgument='<%#Eval("id") %>' CommandName="delete_deletemail"><span style="font-size:medium;"><i class="fa fa-trash-o"></i></span></asp:LinkButton>    
                            </td>
                        </tr>
                        </ItemTemplate>
                        
                        </asp:Repeater>
                        
                    </tbody>
                </table>
               </div>
            </div>
</div>
</div>
<div class="clearfix"> </div>
   </div>
    
</asp:Content>

