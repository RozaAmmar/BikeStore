using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Customer_Browse_Categories : System.Web.UI.UserControl
{
    public void sortcategory(string  mystr)
    {
        MydbEntities mdb = new MydbEntities();
        var category = from c in mdb.Categories
                       where c.CategoryName.StartsWith(mystr)
                       select new { c.CategoryID, c.CategoryName };
        DataList1.DataSource = category.ToList();
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        if(!IsPostBack )
        {
            var category = from c in mdb.Categories
                           select new { c.CategoryID, c.CategoryName };
            DataList1.DataSource=category.ToList();
            DataList1.DataBind();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton button = (LinkButton)sender;
        sortcategory(button.Text);

    }
    protected void LinkButton28_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        var category = from c in mdb.Categories
                       select new { c.CategoryID, c.CategoryName };
        DataList1.DataSource = category.ToList();
        DataList1.DataBind();
    }
}