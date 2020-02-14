using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public SqlConnection con = new SqlConnection("Data Source=DESKTOP-C0NHIE5;Initial Catalog=study_world;Integrated Security=True");
	public Connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void connect()
    {
        con.Open();
    }
    public void disconnect()
    {
        con.Close();
    }
    protected void sendsms()
    {
        // use the API URL here  
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=amanlovi1122@gmail.com:sms@aman1&senderID=TEST SMS&receipientno=918299237887&dcs=0&msgtxt=Thank You For Registration To Us&state=4 ";
        // Create a request object  
        WebRequest request = HttpWebRequest.Create(strUrl);
        // Get the response back  
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();
    }
}