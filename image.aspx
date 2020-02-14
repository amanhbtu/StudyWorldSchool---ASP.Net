<%@ Page Language="C#" AutoEventWireup="true" CodeFile="image.aspx.cs" Inherits="image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/smoothbox.css" type='text/css' media="all" />
<!--css-->
<!--js-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--js-->
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--webfonts-->
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <!--Projects-->
		<div class="content">
			<div class="projects-agile">
				<div class="container">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/gallery.aspx"><span style="color: #49872E; font-weight: 600; font-size: x-large;">&larr;Back To Gallery</span></asp:HyperLink>
                    <h2 class="tittle">
                        <asp:Label ID="lblfolder" runat="server" Text=""></asp:Label></h2>
                        <p style="text-align:justify; font-size:x-large; color:#FF9900; font-weight:600; margin:10px;">
                            <asp:Label ID="lblabt" runat="server" Text=""></asp:Label></p>
						<div class="portfolio_grid_w3lss">
                        <asp:Repeater ID="repeatergallery" runat="server">
        <ItemTemplate>
        <div class="col-md-4 w3agile_Projects_grid">
								<div class="w3agile_Projects_image" style="margin-bottom:20px;">
									<a class="sb" href='<%#Eval("address") %>' title="<%#Eval("about") %>">
										<figure>
											<img src='<%#Eval("address") %>' alt="" class="img-responsive" />
										</figure>
									</a>
								</div>
							</div>
                            </ItemTemplate>
        </asp:Repeater>

							<div class="clearfix"> </div>
						</div>
					<script type="text/javascript" src="js/smoothbox.jquery2.js"></script>
				</div>
			</div>
		</div>
		<!--Projects-->
        
    </div>
    </form>
</body>
</html>
