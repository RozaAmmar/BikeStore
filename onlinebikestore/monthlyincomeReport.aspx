<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="monthlyincomeReport.aspx.cs" Inherits="monthlyincomeReport" %>

<%@ Register src="UserControl/monthlyincomeReport.ascx" tagname="monthlyincomeReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:monthlyincomeReport ID="monthlyincomeReport1" runat="server" />
</asp:Content>

