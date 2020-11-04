using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace WebApplication1
{
    public partial class admin2 : System.Web.UI.Page
    {
        MySqlConnection objConn;

        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConnString;
            strConnString = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();
            String strSQL;

            strSQL = "select * from apply; ";



            MySqlDataReader dtReader;

            objCmd = new MySqlCommand(strSQL, objConn);
            dtReader = objCmd.ExecuteReader();

            Repeater1.DataSource = dtReader;
            Repeater1.DataBind();
            dtReader.Close();
            dtReader = null;
        
    }
    }
}