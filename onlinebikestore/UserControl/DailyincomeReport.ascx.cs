using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_incomeReport : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         MydbEntities mdb = new MydbEntities();
       double   myrep = Convert.ToDouble((from r in mdb.OrdersDetails
                                          where r.Order.ordDate==Calendar1.SelectedDate
                     select r.ProductPrice).Sum());
       lblresult.Text = "Total sales in  : " +Calendar1.SelectedDate.ToShortDateString()+ " is : " + myrep.ToString() + "$";
    }
}