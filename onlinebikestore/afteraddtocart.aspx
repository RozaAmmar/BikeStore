<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="afteraddtocart.aspx.cs" Inherits="afteraddtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
        Text="Product Added to cart successfuly "></asp:Label>
</p>
<p style="text-align: center">
    <asp:Label ID="Label2" runat="server" Font-Size="Medium" 
        Text="You can add another Products from"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" 
        NavigateUrl="~/browseproducts.aspx">Here</asp:HyperLink>
&nbsp;<asp:Label ID="Label3" runat="server" Font-Size="Medium" 
        Text="or you can submit order from"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" 
        NavigateUrl="~/Submitorder.aspx">Here</asp:HyperLink>
</p>
</asp:Content>

