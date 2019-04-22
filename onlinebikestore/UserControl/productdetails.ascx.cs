using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_productdetails : System.Web.UI.UserControl
{
    void fillproducrdata(int id)
    {
        MydbEntities mdb = new MydbEntities();
        if (!IsPostBack)
        {
            var productdetails = from p in mdb.Products
                                 where p.ProductID == id
                                 select new { p.ProductID, p.ProductName, p.ProductPrice, p.Manufacturer, p.Description, p.Features, p.Category.CategoryName };
            foreach (var x in productdetails)
            {
                lblproductname.Text = x.ProductName;
                lblProductPrice.Text = x.ProductPrice.ToString();
                lblManufacturer.Text = x.Manufacturer;
                lblFeatures.Text = x.Features;
                lblDescription.Text = x.Description;
                lblCategoryName.Text = x.CategoryName;
                prdID.Value = x.ProductID.ToString();
                Image1.ImageUrl = "../pics/product/"+x.ProductID.ToString()+".jpg";

            }
        }
    }
    void fiilcommentdata(int id)
    {
        MydbEntities mdb = new MydbEntities();
        var comments = from c in mdb.Comments
                       where c.ProductID == id
                       select new { c.CommentText, c.Customer.FirstName };
        if (comments.Any())
        {
        ListView1.DataSource=comments.ToList();
        ListView1.DataBind();
           
        }
    }
    void fillratedata(int id)
    {
        MydbEntities mdb = new MydbEntities();
        var rates = from r in mdb.Rates
                    where r.ProductID == id
                    select new { r.RateValue, r.RateID };

        
        if (!rates.Any())
        {
            im1.Visible = true;
            im2.Visible = false;
            im3.Visible = false;
            im4.Visible = false;
            im5.Visible = false;
        }
        else
        {
            int count = 0, sum = 0, avg = 0;
              
            foreach (var x in rates)
            {
                sum = sum + x.RateValue;
                count++;
            }
            avg =Convert.ToInt32( sum / count);
            switch (avg)
                {
                    case 1:
                         im1.Visible = true;
                         im2.Visible = false;
                         im3.Visible = false;
                         im4.Visible = false;
                         im5.Visible = false;
                         return;

                    case 2:
                          im1.Visible = true;
                         im2.Visible = true;
                         im3.Visible = false;
                         im4.Visible = false;
                         im5.Visible = false;
                         return;
                    case 3:
                         im1.Visible = true;
                         im2.Visible = true;
                         im3.Visible = true;
                         im4.Visible = false;
                         im5.Visible = false;
                         return;
                    case 4:
                         im1.Visible = true;
                         im2.Visible = true;
                         im3.Visible = true;
                         im4.Visible = true;
                         im5.Visible = false;
                         return;
                    case 5:
                         im1.Visible = true;
                         im2.Visible = true;
                         im3.Visible = true;
                         im4.Visible = true;
                         im5.Visible = true;
                         return;
                       
                }
            }
           
              
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        int  prdid = Convert.ToInt32( Request.QueryString[0].ToString());
        if (!IsPostBack)
        {
          
            fillproducrdata(prdid);
            fiilcommentdata(prdid);
            fillratedata(prdid);
            ListView1.DataBind();
            Utility u = new Utility();

            if (u.ReadFromCookie("bike_login", "Bike_user", Request) == null)
            {
                btn_addcomment.Visible = false;
                txt_entercomment.ReadOnly = true;
                pnladdrate.Visible = false;
                pnlmustlograte.Visible = true;
                txt_entercomment.Text = "You must login to add comment!";
            }
            else
            {
                btn_addcomment.Visible = true;
                txt_entercomment.ReadOnly = false;
                pnladdrate.Visible = true;
                pnlmustlograte.Visible = false;
                txt_entercomment.Text = "Write Comment here";
            }
        }
    }
    protected void btn_addcomment_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        Utility u = new Utility();
        string customerid = u.ReadFromCookie("bike_login", "Bike_user", Request).ToString();
        mdb.Insert_Comment(txt_entercomment.Text, Convert.ToInt32(customerid), Convert.ToInt32(prdID.Value));
        fiilcommentdata(Convert.ToInt32(prdID.Value));
        txt_entercomment.Text = string.Empty;
    }
    protected void btnAddRate_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        pnladdrate.Visible = false;
        pnlAfterAdd.Visible = true;
        mdb.Insert_Rate(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(prdID.Value));
        
        fillratedata(Convert.ToInt32(prdID.Value));
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Utility u = new Utility();
        if (u.ReadFromCookie("bike_login", "Bike_user", Request) == null)
        {
            Response.Redirect("loginrequired.aspx");
        }
        else
        {
            //here add to cart
            DataTable dtl;
            if (Session["Mybikecart"] == null)
            {
                dtl = new DataTable();
                dtl.Columns.Add("ProductID");
                dtl.Columns.Add("ProductName");
                dtl.Columns.Add("Price");
           
            }
            else
            {
                dtl = (DataTable)Session["Mybikecart"];
            }
            DataRow dtr = dtl.NewRow();
            dtr[0] = prdID.Value.ToString();
            dtr[1] = lblproductname.Text;
            dtr[2] = lblProductPrice.Text;
            dtl.Rows.Add(dtr);
            Session["Mybikecart"] = dtl;
            Response.Redirect(@"./browseproducts.aspx");
        }
    }
}