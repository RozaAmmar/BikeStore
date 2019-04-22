using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Update_PWD : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Utility u = new Utility();
         if (u.ReadFromCookie("bike_login", "Bike_user", Request) != null)
         {
             int UID = Convert.ToInt32(u.ReadFromCookie("bike_login", "Bike_user", Request).ToString());
             string pass = u.ReadFromCookie("bike_login", "Pass", Request).ToString();
             if (pass.ToString() == txtoldpwd.Text)
             {
                 MydbEntities mdb = new MydbEntities();
                 mdb.Update_Customer_PWD(UID, txtnewpwd.Text);
                 u.Removecookie("bike_login", Response);
                 Session["Mybikecart"] = null;
                 Response.Redirect("Default.aspx");

             }
             else
             {
                 lblmsg.Text = "old password not correct!";
             }

             
         }
         else
         {
             Response.Redirect("Default.aspx");
         }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Utility u = new Utility();
        if (u.ReadFromCookie("bike_login", "Bike_user", Request) != null)
        {
            int UID = Convert.ToInt32(u.ReadFromCookie("bike_login", "Bike_user", Request).ToString());
            string pass = u.ReadFromCookie("bike_login", "Pass", Request).ToString();
            if (pass.ToString() == txtoldpwd.Text)
            {
                MydbEntities mdb = new MydbEntities();
                mdb.Update_Customer_PWD(UID, txtnewpwd.Text);
                u.Removecookie("bike_login", Response);
                Session["Mybikecart"] = null;
                Response.Redirect("Default.aspx");

            }
            else
            {
                lblmsg.Text = "old password not correct!";
            }


        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
}