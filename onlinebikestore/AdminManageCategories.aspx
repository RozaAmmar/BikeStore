<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="AdminManageCategories.aspx.cs" Inherits="AdminManageCategories" %>

<%@ Register src="UserControl/Admin_ManageCategories.ascx" tagname="Admin_ManageCategories" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Admin_ManageCategories ID="Admin_ManageCategories1" runat="server" />
</asp:Content>

