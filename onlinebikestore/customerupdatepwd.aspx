<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="customerupdatepwd.aspx.cs" Inherits="customerupdatepwd" %>

<%@ Register src="UserControl/Update_PWD.ascx" tagname="Update_PWD" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Update_PWD ID="Update_PWD1" runat="server" />
</asp:Content>

