<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="adm_FrequentlyBoughtTogether.aspx.cs" Inherits="adm_FrequentlyBoughtTogether" %>

<%@ Register src="UserControl/adm_FrequentlyBoughtTogether.ascx" tagname="adm_FrequentlyBoughtTogether" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:adm_FrequentlyBoughtTogether ID="adm_FrequentlyBoughtTogether1" runat="server" />
</asp:Content>

