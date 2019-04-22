<%@ Control Language="C#" AutoEventWireup="true" CodeFile="adm_FrequentlyBoughtTogether.ascx.cs" Inherits="UserControl_adm_FrequentlyBoughtTogether" %>
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
            <table class="table table-striped table-bordered">
                <tr>
                    <td rowspan="3" style="	vertical-align: middle;">
                        <asp:Label ID="Label1" runat="server" Text="Please Select Products :" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ListBox ID="productlist" runat="server" Height="218px" Width="237px" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="3" style="	vertical-align: middle;">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Result :" Visible="False"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Get Result" CssClass="btn_addcomment" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ListBox ID="resultlist" runat="server" Height="218px" Visible="False" Width="237px"></asp:ListBox>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>

