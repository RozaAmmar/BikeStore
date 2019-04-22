<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Admin_Manage_Products.ascx.cs" Inherits="UserControl_Admin_Manage_Products" %>
<style type="text/css">
    .auto-style1 {
        width: 5px;
    }
    .auto-style2 {
        height: 32px;
    }
</style>

<p style="text-align: center">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <br />
        <asp:View ID="View1" runat="server">
            <table class="table table-striped table-bordered">
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Manage Products"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Search product Contains :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtsearch" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click1" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Enabled="False" Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="btnEdit" runat="server" Enabled="False" Text="Edit" OnClick="btnEdit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3"></td>
                </tr>
            </table>
            <br />
            <table align="center">
                <tr>
                    <td>
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
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:HiddenField ID="productID" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Product Name :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtProductName" runat="server" ValidationGroup="product_Add" Width="196px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="*" ForeColor="Red" ValidationGroup="product_Add"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label18" runat="server" Text="Product Price :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPrice" runat="server" ValidationGroup="product_Add" Width="196px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="*" ForeColor="Red" ValidationGroup="product_Add"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Manufacturer: "></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtManufacturer" runat="server" ValidationGroup="product_Add" Width="196px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtManufacturer" ErrorMessage="*" ForeColor="Red" ValidationGroup="product_Add"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label20" runat="server" Text="Features :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtfeatures" runat="server" Width="196px" Height="145px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label21" runat="server" Text="Description :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtdescription" runat="server" Width="196px" Height="145px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label22" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="DRLcategory" runat="server" Width="160px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label23" runat="server" Text="Image :"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="product_Add" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" ValidationGroup="product_Add" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Back" OnClick="Button3_Click1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:View>
    </asp:MultiView>
</p>

