<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Customer_Browse_Categories.ascx.cs" Inherits="UserControl_Customer_Browse_Categories" %>
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
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" Text="Browse Categories"></asp:Label>
                    </p>
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
            
            <br />
            <center>
            <asp:DataList ID="DataList1" runat="server" CellSpacing="-1" RepeatColumns="5">
                <ItemTemplate>
                    <table class="table table-striped table-bordered">
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# "../pics/category/"+Eval("CategoryID")+".jpg" %>' Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#CC3300" Text='<%# Eval("CategoryName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../productsbycategory.aspx?id="+Eval("CategoryID")%>'>View Products</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                <br />
                </center>
<br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>
    <p style="text-align: center">
        &nbsp;</p>

