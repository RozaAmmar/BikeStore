<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Submitorder.aspx.cs" Inherits="Submitorder" %>

<%@ Register src="UserControl/UCSubmitorder.ascx" tagname="UCSubmitorder" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:UCSubmitorder ID="UCSubmitorder1" runat="server" />
</asp:Content>

