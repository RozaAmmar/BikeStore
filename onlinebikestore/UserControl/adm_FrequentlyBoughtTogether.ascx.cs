using Microsoft.AnalysisServices.AdomdClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_adm_FrequentlyBoughtTogether : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        MydbEntities mdb = new MydbEntities();
        if (!IsPostBack)
        {
            var products = from p in mdb.Products
                           select p.ProductName;
            productlist.DataSource = products.ToList();
            productlist.DataBind();
        }
    }

    public List<string> predict(List<string> input)
    {

        List<string> output = new List<string>();
        //Connection
        AdomdConnection CON = new AdomdConnection(
            "Data Source=.;Catalog=AnalysisDB");

        CON.Open();
        // command 
        AdomdCommand COM = CON.CreateCommand();

        // Query Command to Retrive Result
        string s = @"SELECT Flattened  PREDICT([Orders Details],3)
           FROM [OrdersMM] 
          NATURAL PREDICTION JOIN
          (SELECT ( ";

        foreach (string x in input)
        {
            if (input.IndexOf(x) > 0)
                s += " Union ";
            s += "Select '" + x + "' as [Product Name]";
        }

        s += " )  AS [Orders Details]) As T";


        COM.CommandText = s;


        // Read result 
        AdomdDataReader DR = COM.ExecuteReader();

        while (DR.Read())
        {
            if (DR[0] != null)
                output.Add(DR[0].ToString());

        }

        DR.Close();
        CON.Close();
        return output;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //هذا الكود لافراغ القائمة من المحتويات
        resultlist.Items.Clear();
        List<string> input = new List<string>();
        List<string> output = new List<string>();
        //اضافة القيم المختارة الى القائمة
        int[] x = productlist.GetSelectedIndices();
        foreach (int i in x)
            input.Add(productlist.Items[i].Text);
        output = predict(input);
        //عرض النتيجة ضمن القائمة
        foreach (string s in output)
            resultlist.Items.Add(s);
        resultlist.Visible = true;
        Label2.Visible = true;
    }
}