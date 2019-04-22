<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_ManageCategories.ascx.cs" Inherits="UserControl_Admin_ManageCategories" %>
<style type="text/css">
    .auto-style1 {
        width: 5px;
    }
</style>
<p style="text-align: center">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <br />
        <asp:View ID="View1" runat="server">
            <table class="table table-striped table-bordered">
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Manage Categories"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Search Category Contains:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSearch" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add New" OnClick="btnAdd_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Enabled="False" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Enabled="False" Text="Edit" OnClick="btnEdit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:ButtonField CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        </asp:View>
        <br />
        <br />
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label17" runat="server" Font-Size="XX-Large" Text="Add Category"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1" colspan="2">
                        <asp:HiddenField ID="catid" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Category Name :"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtcatName" runat="server" ValidationGroup="Cat_add" Width="199px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtcatName" ForeColor="Red" ValidationGroup="Cat_add"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Category Name :"></asp:Label>
                    </td>
                    <td class="auto-style1" colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red" ValidationGroup="Cat_add"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="Cat_add" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</p>

