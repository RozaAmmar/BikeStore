using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Customer_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Utility u = new Utility();
        if (u.ReadFromCookie("bike_login", "Bike_user", Request) != null)
        {
            int UID = Convert.ToInt32(u.ReadFromCookie("bike_login", "Bike_user", Request).ToString());
            MydbEntities mdb = new MydbEntities();
            var customer = from c in mdb.Customers
                           where c.CustomerID  ==UID 
                           select c.Is_Admin;
            if (customer.Any())
            {
                foreach (var x in customer)
                {
                    if (x == false)
                        MultiView1.ActiveViewIndex = 1;
                    else
                        MultiView1.ActiveViewIndex = 2;
                }
                
            }
            
        }
          
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        Utility u = new Utility();
        var customer = from c in mdb.Customers
                       where c.UserName == txtUserName.Text && c.PWD == txtPWD.Text
                       select new { c.Is_Admin, c.CustomerID };
        string  cusid="";
        if (customer.Any())
        {
            // Create cookie
            foreach (var c in customer )
                 cusid= c.CustomerID.ToString();
            u.Createcookie("bike_login", new string[] { "Bike_user", "Pass" }, new string[] { cusid, txtPWD.Text }, true, Response);
            lblmsg.Text = "Welcome Back " + u.ReadFromCookie("bike_login", "Bike_user", Request);
            foreach (var x in customer)
            {
                if (x.Is_Admin==false)
                    MultiView1.ActiveViewIndex = 1;
                else
                    MultiView1.ActiveViewIndex = 2;
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        else
        {
            lblmsg.Text = "Login Error";
        }
            

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Utility u = new Utility();
        u.Removecookie("bike_login", Response);
        Session["Mybikecart"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Utility u = new Utility();
        u.Removecookie("bike_login", Response);
        Session["Mybikecart"] = null;
        Response.Redirect("Default.aspx");
    }
}