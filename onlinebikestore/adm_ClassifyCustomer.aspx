<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="adm_ClassifyCustomer.aspx.cs" Inherits="adm_ClassifyCustomer" %>

<%@ Register src="UserControl/adm_ClassifyCustomer.ascx" tagname="adm_ClassifyCustomer" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:adm_ClassifyCustomer ID="adm_ClassifyCustomer1" runat="server" />
</asp:Content>

