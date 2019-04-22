using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_productsbycategory : System.Web.UI.UserControl
{
    public void sortprogram(string mystr)
    {
        int id =Convert.ToInt32( Request.QueryString[0].ToString());
        MydbEntities mdb = new MydbEntities();
        var products = from p in mdb.Products 
                       where p.CategoryID==id && p.ProductName.StartsWith(mystr)
                       select new { p.ProductID, p.ProductName, p.ProductPrice };
        DataList1.DataSource = products.ToList();
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        int id =Convert.ToInt32( Request.QueryString[0].ToString());
        if(!IsPostBack )
        {
            MydbEntities mdb = new MydbEntities();
            var products = from p in mdb.Products
                           where p.CategoryID == id
                           select new { p.ProductID, p.ProductName, p.ProductPrice };
            DataList1.DataSource = products.ToList();
            DataList1.DataBind();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton button = (LinkButton)sender;
        sortprogram(button.Text);

    }
    protected void LinkButton28_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString[0].ToString());
        MydbEntities mdb = new MydbEntities();
        var products = from p in mdb.Products
                       where p.CategoryID == id
                       select new { p.ProductID, p.ProductName, p.ProductPrice };
        DataList1.DataSource = products.ToList();
        DataList1.DataBind();
    }
}