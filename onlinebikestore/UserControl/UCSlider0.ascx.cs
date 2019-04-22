using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_UCSlider0 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        var products = from p in mdb.Products
                       select new {p.ProductID,p.ProductName,p.Category.CategoryName };
        DataList1.DataSource = products.ToList();
        DataList1.DataKeyField = "ProductID";
        DataList1.DataBind();
    }
}