using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_productsearch : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack )
        {
           
            MydbEntities mdb = new MydbEntities();
            var category = from c in mdb.Categories
                           select new { c.CategoryID, c.CategoryName };
            
            DRPCategory.DataSource = category.ToList();
            DRPCategory.DataValueField = "CategoryID";
            DRPCategory.DataTextField = "CategoryName";
            DRPCategory.DataBind();
            DRPCategory.Items.Add("All Categories");
            DRPCategory.SelectedIndex = DRPCategory.Items.IndexOf(DRPCategory.Items.FindByText("All Categories"));
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        if (DRPCategory.SelectedItem.ToString() == "All Categories")
        {
            var products = from p in mdb.Products
                           where p.ProductName.Contains(txtproductname.Text)
                           select new { p.ProductID, p.ProductName };
             DataList1.DataSource = products.ToList();
             DataList1.DataBind();
        }
        else
        {
            var products = from p in mdb.Products
                           where p.ProductName.Contains(txtproductname.Text) && p.CategoryID==DRPCategory.SelectedIndex 
                           select new { p.ProductID, p.ProductName };
            DataList1.DataSource = products.ToList();
            DataList1.DataBind();
        }
        
    }
}