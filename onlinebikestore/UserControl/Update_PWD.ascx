<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Update_PWD.ascx.cs" Inherits="UserControl_Update_PWD" %>
<style type="text/css">
    .auto-style4 {
        width: 47px;
    }
    .auto-style2 {
        height: 32px;
    }
    .auto-style3 {
        width: 47px;
        height: 32px;
    }
</style>

<body style="text-align: center">
    <p style="text-align: center">
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Update Password"></asp:Label>
                    </p>
    <table align="center">
        <tr>
            <td colspan="3" style="text-align: left">
                <asp:Label ID="Label20" runat="server" Font-Size="Small" ForeColor="Red" Text="* after update your password you must to login ."></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Old Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtoldpwd" runat="server" ValidationGroup="cus-up" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtoldpwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="cus-up"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="New Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnewpwd" runat="server" ValidationGroup="cus-up" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpwd" ErrorMessage="*" ForeColor="Red" ValidationGroup="cus-up"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label19" runat="server" Text="Reapet Password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnewrep" runat="server" ValidationGroup="cus-up" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnewrep" ErrorMessage="*" ForeColor="Red" ValidationGroup="cus-up"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtnewpwd" ControlToValidate="txtnewrep" ErrorMessage="Password dosn't matche" Font-Size="Small" ValidationGroup="cus-up"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" ValidationGroup="cus-up" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>

