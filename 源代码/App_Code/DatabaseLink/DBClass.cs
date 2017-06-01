using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// DBClass 的摘要说明
/// </summary>
public class DBClass
{
    string sqlstring;
    SqlConnection MyConnection;
    SqlCommand MyCommand;
    SqlDataReader dr;
    DataSet ds;
    SqlDataAdapter MyCommand1;
	public DBClass(string sqlstring)
	{
        this.sqlstring = sqlstring;
	}

    public SqlDataReader returndr()
    {
        MyConnection = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
        MyCommand = new SqlCommand(sqlstring, MyConnection);
        MyConnection.Open();
        dr = MyCommand.ExecuteReader();
        return dr;
    }

    public void dbClose()
    {
        MyConnection.Close();
    }

    public DataSet returnSet(string tableName)
    {
        MyConnection = new SqlConnection("server=(local);database=pretrade;uid=sa;pwd=123456");
        MyCommand1 = new SqlDataAdapter(sqlstring, MyConnection);
        ds = new DataSet();
        MyCommand1.Fill(ds, tableName);
        return ds;
    }
}
