using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace WebApplication1
{
    public partial class libray : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlDataReader reader;
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            string query = "select * from book";
            MySqlCommand cmd = new MySqlCommand(query, con);
            reader = cmd.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
        }
    }
}