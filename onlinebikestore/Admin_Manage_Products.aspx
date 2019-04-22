<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Manage_Products.aspx.cs" Inherits="Admin_Manage_Products" %>

<%@ Register src="UserControl/Admin_Manage_Products.ascx" tagname="Admin_Manage_Products" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_Manage_Products ID="Admin_Manage_Products1" runat="server" />
</asp:Content>

