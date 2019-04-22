<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="browseproducts.aspx.cs" Inherits="browseproducts" %>

<%@ Register src="UserControl/Customer_Browse_Products.ascx" tagname="Customer_Browse_Products" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Customer_Browse_Products ID="Customer_Browse_Products1" runat="server" />
</asp:Content>

