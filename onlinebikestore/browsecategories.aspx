<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="browsecategories.aspx.cs" Inherits="browsecategories" %>

<%@ Register src="UserControl/Customer_Browse_Categories.ascx" tagname="Customer_Browse_Categories" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Customer_Browse_Categories ID="Customer_Browse_Categories1" runat="server" />
</asp:Content>

