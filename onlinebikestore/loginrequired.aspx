<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="loginrequired.aspx.cs" Inherits="loginrequired" %>

<%@ Register src="UserControl/Customer_Login.ascx" tagname="Customer_Login" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="You must login to add products to cart if you don't have account please Register from "></asp:Label><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Here</asp:HyperLink>
</asp:Content>

