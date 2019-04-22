<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.ascx.cs" Inherits="UserControl_ShoppingCart" %>
<body style="text-align: center">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <br />
        <asp:View ID="View1" runat="server">
            <br />
            <asp:Label ID="Label3" runat="server" Text="You must login"></asp:Label>
        </asp:View>
        <br />
        
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                            CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            ShowHeader="False">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="ProductName" ShowHeader="False" />
                                <asp:ButtonField CommandName="Select" Text="Remove" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Total :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txttotalprice" runat="server" Enabled="False" Width="65px">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                
                    <td colspan="2" style="border: thin dotted #FFFFFF">
                    <center>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            Font-Bold="True" ForeColor="White">Submit Orders</asp:LinkButton>
                            </center>
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
        <asp:View ID="View3" runat="server">
            <asp:Label ID="Label4" runat="server" Text="No Item !"></asp:Label>
        </asp:View>
    </asp:MultiView>

