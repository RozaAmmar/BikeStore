<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCSlider0.ascx.cs" Inherits="UserControl_UCSlider0" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		
		<link rel="stylesheet" href="./MasterPage/slider/css/layout.css" type="text/css" media="screen" charset="utf-8" />
		<link rel="stylesheet" href="./MasterPage/slider/css/jd.gallery.css" type="text/css" media="screen" charset="utf-8" />
		<script src="./MasterPage/slider/scripts/mootools.v1.11.js" type="text/javascript"></script>
		<script src="./MasterPage/slider/scripts/jd.gallery.js" type="text/javascript"></script>
	</head>
	<body>
		<script type="text/javascript">
		    function startGallery() {
		        var myGallery = new gallery($('myGallery'), {
		            timed: false
		        });
		    }
		    window.addEvent('domready', startGallery);
		</script>
		<div class="content">
            <div id="myGallery">
            <asp:DataList ID="DataList1" runat="server">
               <ItemTemplate>
				<div class="imageElement">
           					<h3><%# Eval("ProductName") %></h3>
					<p><%#Eval("CategoryName") %></p>
					<a href="./productdetails.aspx?id=<%#Eval("ProductID") %>" title="open link" class="open"></a>
                   
					<img src="./pics/product/<%#Eval("ProductID") %>.jpg" class="full" />
					<img src="./pics/product/<%#Eval("ProductID") %>.jpg" class="thumbnail" />
				</div>  
                   </ItemTemplate> 
                 </asp:DataList>
                <br />
               <br />
                </div>
            <br />
               <br />
		</div>
        <br />
	</body>
</html>