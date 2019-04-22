using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class UserControl_monthlyincomeReport : System.Web.UI.UserControl
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            MydbEntities mdb = new MydbEntities();
            DataTable dt = new DataTable();
            dt.Columns.Add("Orddate");
            dt.Columns.Add("ordprice");

           var   myrep = mdb.Get_monthly_Report(Calendar1.SelectedDate.Month.ToString());
            foreach (var x in myrep )
            {
                DataRow r = dt.NewRow();
                r[0] = x.ordDate.Value.ToShortDateString();
                r[1] = x.total.Value.ToString();
                dt.Rows.Add(r);
            }
            double sum=0;
            Chart1.Series.Add("test");
            Chart1.Series["test"].XValueMember = "Orddate";
            Chart1.Series["test"].YValueMembers = "ordprice";
            Chart1.DataSource = dt;
            Chart1.DataBind();
            Chart1.Visible = true;
            for (int i = 0; i < dt.Rows.Count - 1; i++)
                sum = sum + Convert.ToDouble(dt.Rows[i][1].ToString());
                lblresult.Text = "Total sales in  month : "+Calendar1.SelectedDate.Month.ToString()+ " is "+ sum.ToString() +"$";
            
           
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblresult.Text = "";
    }
}