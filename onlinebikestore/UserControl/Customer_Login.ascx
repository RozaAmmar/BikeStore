 <%@ Control Language="C#" AutoEventWireup="true" CodeFile="Customer_Login.ascx.cs" Inherits="UserControl_Customer_Login" %>

<p style="text-align: center">
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <br />
        <asp:View ID="login1" runat="server">
            <div class="form-group">
                <label for="exampleInputEmail1">User Name</label>

                <asp:TextBox ID="txtUserName" runat="server" ValidationGroup="cus_Login" class="form-control"></asp:TextBox>
              </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
              <asp:TextBox ID="txtPWD" runat="server" TextMode="Password" ValidationGroup="cus_Login" class="form-control"></asp:TextBox>
          </div>
          <div class="form-group">
              <asp:Label ID="lblmsg" runat="server" class="help-block"></asp:Label>
          </div>
            <asp:Button ID="Button1" runat="server" Text="Login"  ValidationGroup="cus_Login" OnClick="Button1_Click" class="btn btn-default"/>
            
        </asp:View>
        <br />
        <asp:View ID="customer" runat="server">
            <table class="table table-bordered">
                
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/customerupdatepwd.aspx">Update Password</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:View>
        <br />
        <br />
        <asp:View ID="admin" runat="server">
            <table class="table table-striped table-bordered">
                <tr>
                    <td>
                        <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/AdminManageCategories.aspx">Manage Categories</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Admin_Manage_Products.aspx">Manage Products</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/customerupdatepwd.aspx">Update Password</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/DailyincomeReport.aspx">Daily Report</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/monthlyincomeReport.aspx">Monthly Report</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Mining Tools"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton9" runat="server" PostBackUrl="~/adm_FrequentlyBoughtTogether.aspx">Frequently Bought Together</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/adm_hewillbuy.aspx">He Will Buy ?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="~/adm_ClassifyCustomer.aspx">Classify Customer</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="~/adm_getrecommendations.aspx">Get  recommendations</asp:LinkButton>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
        </asp:View>
    </asp:MultiView>
</p>

