<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="productsbycategory.aspx.cs" Inherits="productsbycategory" %>

<%@ Register src="UserControl/productsbycategory.ascx" tagname="productsbycategory" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:productsbycategory ID="productsbycategory1" runat="server" />
</asp:Content>

