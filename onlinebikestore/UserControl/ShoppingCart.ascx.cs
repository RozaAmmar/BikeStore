using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_ShoppingCart : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Utility u = new Utility();
        if (u.ReadFromCookie("bike_login", "Bike_user", Request) != null)
        {
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
                            txttotalprice.Text = Convert.ToString(Convert.ToDouble(txttotalprice.Text) + Convert.ToDouble(dt.Rows[i][2].ToString()));
                        }
                    }
                }
                catch
                {
                    MultiView1.ActiveViewIndex = 2;
                }
                finally
                {

                    MultiView1.ActiveViewIndex = 1;
                }
            }
            else
            {
                MultiView1.ActiveViewIndex = 2;
            }

        }

        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Mybikecart"];
        dt.Rows.RemoveAt(GridView1.SelectedIndex);
        Session["Mybikecart"] = dt;
        DataTable dt2 = new DataTable();
        dt2 = (DataTable)Session["Mybikecart"];
        GridView1.DataSource = dt2;
        GridView1.DataBind();
        GridView1.SelectedIndex = -1;
        txttotalprice.Text = "0";
        for (int i = 0; i < dt2.Rows.Count; i++)
        {
            txttotalprice.Text = Convert.ToString(Convert.ToDouble(txttotalprice.Text) + Convert.ToDouble(dt2.Rows[i][2].ToString()));
        }
        if (dt2.Rows.Count == 0)
        {
            Session["Mybikecart"] = null;
            MultiView1.ActiveViewIndex = 2;
        }
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"./Submitorder.aspx");
    }
}