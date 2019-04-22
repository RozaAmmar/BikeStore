using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AnalysisServices.AdomdClient;

public partial class UserControl_adm_getpersonalisedrecommendations : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //الاتصال مع قاعدة البيانات
        AdomdConnection conn = new AdomdConnection();
        conn.ConnectionString = "Data Source=.;Catalog=AnalysisDB";
        conn.Open();
        // Command
        AdomdCommand cmd = new AdomdCommand();
        cmd.Connection = conn;
        //DMX استعلام
        cmd.CommandText = String.Format(@"select Predict ([Product Name]) from [Customer_ProductsMM]
                                          natural prediction join
                      (select '{0}' as [Age],
		                      '{1}' as [Cars],
		                      '{2}' as [Children],
		                      '{3}' as [Commute Distance],
                              '{4}' as [Education],
                              '{5}' as [Gender],
                              '{6}' as [Home Owner],
                              '{7}' as [Income],
                              '{8}' as [Marital Status],
                              '{9}' as [Occupation],
                              '{10}' as [Region]) as t",
     txtAge.Text, txtcar.Text, txtChildren.Text, DRLCommuteD.SelectedItem, DRLeducation.SelectedItem, RBLGender.SelectedItem,
      RBLHomeOwner.SelectedItem, txtIncome.Text, DRLMaritalst.SelectedItem, DRLOccupation.SelectedItem, DRLRegion.SelectedItem);
        //إظهار النتيجة
        AdomdDataReader adr = cmd.ExecuteReader();

        while (adr.Read())
        {
            txtresult.Text = adr.GetString(0);
        }
    }
}