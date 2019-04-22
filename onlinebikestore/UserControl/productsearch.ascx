<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productsearch.ascx.cs" Inherits="UserControl_productsearch" %>
<body style="">
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
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Product Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtproductname" runat="server" Width="157px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Category Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DRPCategory" runat="server" Width="180px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    </td>
                </tr>
            </table>
            <center>
                <br />
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text="Product Name"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" CellSpacing="1" CellPadding="1">
                <ItemTemplate>
                    <br />
                    <table class="table table-striped table-bordered">
                     
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../productdetails.aspx?id="+Eval("ProductID") %>'>View Details</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                </center>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>

