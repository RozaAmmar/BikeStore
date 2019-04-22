using Microsoft.AnalysisServices.AdomdClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for adm_class
/// </summary>
public class adm_class
{
	public adm_class()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public List<string> predict(List<string> input)
    {
        List<string> output = new List<string>();
        AdomdConnection CON = new AdomdConnection(
            "Data Source=.;Catalog=AnalysisDB");

        CON.Open();

        AdomdCommand COM = CON.CreateCommand();

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
}