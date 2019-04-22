<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="productdetails.aspx.cs" Inherits="productdetails" EnableEventValidation="false" %>

<%@ Register src="UserControl/productdetails.ascx" tagname="productdetails" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:productdetails ID="productdetails1" runat="server" />
</asp:Content>

