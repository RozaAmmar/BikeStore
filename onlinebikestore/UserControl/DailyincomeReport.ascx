<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DailyincomeReport.ascx.cs" Inherits="UserControl_incomeReport" %><%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<body style="text-align: center">
    <p style="text-align: center">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/MasterPage/images/preloader-01.gif" Width="30px" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <br />
            <center>            <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Daily Income Report"></asp:Label>
<br />
<br />
                            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Please Select Date :" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2015-09-01"></asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblresult" runat="server" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Result" />
                    </td>
                </tr>
            </table>
                </center>

        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>
    <p style="text-align: center">
        &nbsp;</p>

