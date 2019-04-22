<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="thanks.aspx.cs" Inherits="thanks" %>

<%@ Register src="UserControl/USthanks.ascx" tagname="USthanks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:USthanks ID="USthanks1" runat="server" />
</asp:Content>

