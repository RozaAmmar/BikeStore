<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productsbycategory.ascx.cs" Inherits="UserControl_productsbycategory" %>
<style type="text/css">

    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        width: 10px;
    }
    .auto-style6 {
        width: 20px;
    }
</style>

<body style="text-align: center">
    <p style="text-align: center">
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Products By Category"></asp:Label>
                    </p>
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/MasterPage/images/preloader-01.gif" Width="30px" />
                </ProgressTemplate>
            </asp:UpdateProgress>
<br />
            
            <br />
            <center>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <table align="center">
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# "../pics/product/"+Eval("ProductID")+".jpg" %>' Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text='<%# Eval("ProductPrice") +"$" %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../productdetails.aspx?id="+Eval("ProductID") %>'>View Details</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                </center>
        </ContentTemplate>
    </asp:UpdatePanel>

