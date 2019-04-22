using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_UCSubmitorder : System.Web.UI.UserControl
{
    public string GetLastID ()
    {
        MydbEntities mdb = new MydbEntities();
        Order lastid = (from lid in mdb.Orders
                        orderby lid.OrderID descending
                        select lid).First();
        string ordid = new string(lastid.OrderID.ToString().Where(char.IsDigit).ToArray());
        ordid = "SO"+ (Convert.ToInt32(ordid) + 1).ToString();
        return ordid;
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        Utility u = new Utility();
        if(!IsPostBack || IsPostBack)
            txtusername.Text = u.ReadFromCookie("bike_login", "Bike_user", Request).ToString();
        if (Session["Mybikecart"] != null)
        {
            try
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["Mybikecart"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (!IsPostBack)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        txttotal.Text = Convert.ToString(Convert.ToInt32(txttotal.Text) + Convert.ToInt32(dt.Rows[i][2].ToString()));
                    }
                }
               
                
            }
            catch
            {

            }

        }
        else
        {
            Response.Redirect(@"./Default.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MydbEntities mdb = new MydbEntities();
        string ordid = GetLastID();
        mdb.Insert_Order(ordid, Convert.ToInt32(txtusername.Text), DateTime.Now);
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            mdb.Insert_OrdersDetails(ordid, Convert.ToInt32(GridView1.Rows[i].Cells[0].Text.ToString()), Convert.ToDouble(GridView1.Rows[i].Cells[2].Text.ToString()));
        }
        Session["MyBikecart"] = null;
        Response.Redirect(@"./thanks.aspx");
   
       
    }
}