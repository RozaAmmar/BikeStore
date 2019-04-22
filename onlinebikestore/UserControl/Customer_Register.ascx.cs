using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Customer_Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        var customerusername = from c in mdb.Customers
                               where c.UserName == txtUserName.Text 
                               select c.UserName;
        if(customerusername.Any())
            lblmsg.Text = "UserName Already Exists";
        else
        { mdb.Insert_Customer(txtUserName.Text, txtPWD.Text, txtFirstName.Text, txtlastName.Text, DRLMaritalst.SelectedValue, RBLGender.SelectedValue, Convert.ToDouble(txtIncome.Text), Convert.ToDouble(txtChildren.Text), DRLeducation.SelectedValue, DRLOccupation.SelectedValue, RBLHomeOwner.SelectedValue, Convert.ToDouble(txtcar.Text), DRLCommuteD.SelectedValue, DRLRegion.SelectedValue, Convert.ToDouble(txtAge.Text), "No", false); lblmsg.Text = "Register Done"; }
  
    }
}