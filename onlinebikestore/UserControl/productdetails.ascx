<%@ Control Language="C#" AutoEventWireup="true" CodeFile="productdetails.ascx.cs" Inherits="UserControl_productdetails"   %>

<br />
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<br />
<asp:Table ID="table1" runat="server" CssClass="productsdetails_table table table-striped table-borderd">
    <asp:TableRow >
        <asp:TableCell RowSpan="4" CssClass="imgcell"><asp:Image ID="Image1" runat="server" ImageUrl="~/pics/product/27.jpg" CssClass="productimg" /></asp:TableCell>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="lblname" runat="server" Text="Product Name:" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblproductname" runat="server" Text="name name name" CssClass="textname"></asp:Label></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="Label1" runat="server" Text="Product Price:" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblProductPrice" runat="server" Text="name name" CssClass="textname"></asp:Label>$</asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="Label4" runat="server" Text="Manufacturer:" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblManufacturer" runat="server" Text="name name name" CssClass="textname"></asp:Label></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="Label6" runat="server" Text="Category Name:" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblCategoryName" runat="server" Text="name name name" CssClass="textname"></asp:Label></asp:TableCell>
    </asp:TableRow>

    <%--rateing--%>
    <asp:TableRow>
        <asp:TableCell CssClass="ratecell">
            <asp:Panel ID="mainpanel" runat="server" CssClass="ratepanel">
           
          
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                         <asp:Panel ID="starsview" runat="server" CssClass="ratepanel_inpanel">
                <asp:Image ID="im1" runat="server" ImageUrl="~/MasterPage/images/gold-star2.gif" Height="25" Width="25" />
                 <asp:Image ID="im2" runat="server"  ImageUrl="~/MasterPage/images/gold-star2.gif"  Height="25" Width="25"/>
                 <asp:Image ID="im3" runat="server" ImageUrl="~/MasterPage/images/gold-star2.gif"  Height="25" Width="25"/>
                 <asp:Image ID="im4" runat="server" ImageUrl="~/MasterPage/images/gold-star2.gif"  Height="25" Width="25"/>
                 <asp:Image ID="im5" runat="server" ImageUrl="~/MasterPage/images/gold-star2.gif"  Height="25" Width="25"/>
                         </asp:Panel>
                        <asp:Panel ID="pnladdrate" runat="server" CssClass="ratepanel_inpanel">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown">
                                   <asp:ListItem>1</asp:ListItem>
                                   <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnAddRate" runat="server" Text="Add Rate" OnClick="btnAddRate_Click" class="btn btn-primary"/>
                        <br />
                </asp:Panel>
                      <asp:Panel ID="pnlAfterAdd" runat="server"  CssClass="ratepanel_inpanel" Visible="false">Thanks For Rating</asp:Panel>   
                   </ContentTemplate>
                </asp:UpdatePanel>
            
            <asp:Panel ID="pnlmustlograte" runat="server"   CssClass="ratepanel_inpanel">You Must Login to add rate</asp:Panel>
           

        </asp:Panel>

    </asp:TableCell>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="Label9" runat="server" Text="Description :" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblDescription" runat="server" Text="name name name" CssClass="textname"></asp:Label></asp:TableCell>
    </asp:TableRow>

    <%--add to cart--%>
    <asp:TableRow>
        <asp:TableCell CssClass="addtocart_cell">
           
            <asp:Panel ID="Panel5" runat="server" CssClass="ratepanel">
                <asp:ImageButton ID="ImageButton1" runat="server"  CssClass="btn btn-success" OnClick="ImageButton1_Click" AlternateText="Add To Cart"/></asp:Panel>
            </asp:TableCell>
        <asp:TableCell CssClass="namelblcell"><asp:Label ID="Label8" runat="server" Text="Features:" CssClass="labelname"></asp:Label></asp:TableCell>
        <asp:TableCell CssClass="namecell"><asp:Label ID="lblFeatures" runat="server" Text="name name name" CssClass="textname"></asp:Label></asp:TableCell>
    </asp:TableRow>
</asp:Table>
<br />
<br />
<br />
<%--comments--%>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <center>
                <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/MasterPage/images/preloader-01.gif" Width="30px" />
           </center>
                     </ProgressTemplate>
        </asp:UpdateProgress>
<br />
  
<asp:Table ID="comment_Table" runat="server" CssClass="comments_table">
    <asp:TableRow>
        <asp:TableCell CssClass="commetcell">
            <asp:TextBox ID="txt_entercomment" runat="server" TextMode="MultiLine" Text="Write Comment here" CssClass="txt_entercomment" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Button ID="btn_addcomment" runat="server" Text="Add Comment" CssClass="btn_addcomment" OnClick="btn_addcomment_Click" /></asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell ColumnSpan="2">
            <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="itemContainer">
                <LayoutTemplate>
                    <ul class="comments_list">
                        <asp:PlaceHolder ID="itemContainer" runat="server" />
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li class="comment_li">
                        <br />
                        <div class="commenter_name_div">
                            <asp:Label CssClass="commenter_name" ID="Label12" runat="server" Text='<%# Eval("FirstName")%>'></asp:Label>

                        </div>
                        <img class="commenter_img" src="../MasterPage/images/userDefault.jpg"/>
                        <textarea id="comment_textarea" cols="20" rows="2" class="comment_textarea" aria-multiline="True" aria-readonly="True" disabled="disabled"><%# Eval("CommentText")%></textarea>               

                    </li>
                </ItemTemplate>
                <EmptyDataTemplate >
                    <div class="nocomments_msg">
                        No Comments !
                    </div>
                 </EmptyDataTemplate>
            </asp:ListView>


        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
        <br />
        <asp:HiddenField ID="prdID" runat="server" />
  </ContentTemplate>
</asp:UpdatePanel>

<p style="text-align: left">
    &nbsp;</p>




