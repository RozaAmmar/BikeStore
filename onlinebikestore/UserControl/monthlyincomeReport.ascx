<%@ Control Language="C#" AutoEventWireup="true" CodeFile="monthlyincomeReport.ascx.cs" Inherits="UserControl_monthlyincomeReport" %>
<body style="text-align: center">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/MasterPage/images/preloader-01.gif" Width="30px" />
                </ProgressTemplate>
            </asp:UpdateProgress>
<br />
            <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Monthly Income Report"></asp:Label>
            <br />
            <br />
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="#FF3300" Text="Please Select Date :"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server" SelectedDate="2015-09-01" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblresult" runat="server" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center>
                        <asp:Chart ID="Chart1" runat="server" Visible="False" Width="577px">
                            <Series>
                                <asp:Series Name="Series1" ChartType="StackedColumn">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                            </center>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Result" />
                            </center>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>

