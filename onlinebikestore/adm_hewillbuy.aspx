<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="adm_hewillbuy.aspx.cs" Inherits="adm_hewillbuy" %>

<%@ Register src="UserControl/adm_hewillbuy.ascx" tagname="adm_hewillbuy" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:adm_hewillbuy ID="adm_hewillbuy1" runat="server" />
</asp:Content>

