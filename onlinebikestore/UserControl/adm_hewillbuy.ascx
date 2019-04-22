<%@ Control Language="C#" AutoEventWireup="true" CodeFile="adm_hewillbuy.ascx.cs" Inherits="UserControl_adm_hewillbuy" %>
<style type="text/css">


    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        text-align: center;
        width: 10px;
    }
</style>

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
            <table align="center" border="0">
                <tr>
                    <td class="auto-style1" colspan="4">
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="He Wil Buy ?"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Marital Status:"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DRLMaritalst" runat="server" Height="32px" Width="178px">
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Gender :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:RadioButtonList ID="RBLGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Income :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtIncome" runat="server" TextMode="Number" Width="178px">0</asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Children :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtChildren" runat="server" TextMode="Number" Width="178px">0</asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Education :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DRLeducation" runat="server" Height="32px" Width="178px">
                            <asp:ListItem>Partial High School</asp:ListItem>
                            <asp:ListItem>High School</asp:ListItem>
                            <asp:ListItem>Partial College</asp:ListItem>
                            <asp:ListItem>Bachelors</asp:ListItem>
                            <asp:ListItem>Graduate Degree</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Occupation :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DRLOccupation" runat="server" Height="32px" Width="178px">
                            <asp:ListItem>Manual</asp:ListItem>
                            <asp:ListItem>Clerical</asp:ListItem>
                            <asp:ListItem>Skilled Manual</asp:ListItem>
                            <asp:ListItem>Management</asp:ListItem>
                            <asp:ListItem>Professional</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Home Owner :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:RadioButtonList ID="RBLHomeOwner" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Cars :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtcar" runat="server" TextMode="Number" Width="178px">0</asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Commute Distance :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DRLCommuteD" runat="server" Height="32px" Width="178px">
                            <asp:ListItem>0-1 Miles</asp:ListItem>
                            <asp:ListItem>1-2 Miles</asp:ListItem>
                            <asp:ListItem>2-5 Miles</asp:ListItem>
                            <asp:ListItem>5-10 Miles</asp:ListItem>
                            <asp:ListItem>10+ Miles</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Region :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DRLRegion" runat="server" Height="32px" Width="178px">
                            <asp:ListItem>North America</asp:ListItem>
                            <asp:ListItem>Pacific</asp:ListItem>
                            <asp:ListItem>Europe</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Age :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAge" runat="server" TextMode="Number" Width="178px">0</asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Get Result" Width="142px" />
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Probability Result :"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtresult" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Enabled="False" ReadOnly="True" Width="178px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtresult0" runat="server" BackColor="#FFFF99" BorderStyle="Groove" Enabled="False" ReadOnly="True" Width="178px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>


