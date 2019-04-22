<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="DailyincomeReport.aspx.cs" Inherits="DailyincomeReport" %>

<%@ Register src="UserControl/DailyincomeReport.ascx" tagname="DailyincomeReport" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:DailyincomeReport ID="DailyincomeReport1" runat="server" />
</asp:Content>

