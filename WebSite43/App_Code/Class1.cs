using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;


/// <summary>
/// Summary description for Class1
/// </summary>
public class mySql
{
    public DataSet sqlRet(string ConnStr, string myQuery)
    {
        OleDbDataAdapter oda = new OleDbDataAdapter(myQuery, ConnStr);
        DataSet ds = new DataSet();
        oda.Fill(ds);
        return ds;
    }

    public void sqlChg(string connString, string myQuery)
    {
        OleDbConnection dbconn = new OleDbConnection(connString);
        dbconn.Open();
        OleDbCommand mySqlCommand = new OleDbCommand(myQuery, dbconn);
        mySqlCommand.ExecuteScalar();
        dbconn.Close();
    }
}


