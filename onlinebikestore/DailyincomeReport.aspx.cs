using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DailyincomeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Utility u = new Utility();
        if (u.ReadFromCookie("bike_login", "Bike_user", Request) != null)
        {
            int UID = Convert.ToInt32(u.ReadFromCookie("bike_login", "Bike_user", Request).ToString());
            MydbEntities mdb = new MydbEntities();
            var customer = from c in mdb.Customers
                           where c.CustomerID == UID
                           select c.Is_Admin;
            if (customer.Any())
            {
                foreach (var x in customer)
                {
                    if (x == false)
                        Response.Redirect(@"Default.aspx");
                }
            }
        }
        else
        {
            Response.Redirect(@"Default.aspx");
        }
    }
}