using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    protected string mytry;


    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string x = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("./App_Data/DatabaseGames.accdb") + ";";
        string y = "select * from Games";

        mySql myq = new mySql();
        ds = myq.sqlRet(x, y);
        mytry = ds.Tables[0].Rows[0][1].ToString();

        //Label1.Text = "משחק ה" + mytry + "" + " של יובל ";

    }
}