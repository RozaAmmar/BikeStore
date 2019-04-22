<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="adm_getrecommendations.aspx.cs" Inherits="adm_getrecommendations" %>

<%@ Register src="UserControl/adm_getpersonalisedrecommendations.ascx" tagname="adm_getpersonalisedrecommendations" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:adm_getpersonalisedrecommendations ID="adm_getpersonalisedrecommendations1" runat="server" />
</asp:Content>

