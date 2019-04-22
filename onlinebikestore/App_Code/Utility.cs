using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utility
/// </summary>
public class Utility
{

    public void Createcookie(string cookiename, string[] keys, string[] values, bool expire,HttpResponse res)
    {
        HttpCookie c = new HttpCookie(cookiename);
        if (keys != null)
        {
            for (int x = 0; x < keys.Length; x++)
                c.Values.Add(keys[x], values[x]);

            if (!expire)

                c.Expires = DateTime.Now.AddYears(5);
        }
        else
        {
            c.Expires = DateTime.Now.AddYears(-5);
        }
            res.Cookies.Add(c);
 
        

    }

    public string ReadFromCookie(string cookiename,string key,HttpRequest req)
    {
        try
        {

            return req.Cookies[cookiename][key].ToString();
        }
        catch
        {
            return null;
        }
        
    }


    public void Removecookie(string cookiename,  HttpResponse   res)
    {
        Createcookie(cookiename, null, null,false,res);
    }
    public Utility()
	{
		
	}
}