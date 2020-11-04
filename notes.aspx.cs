using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace WebApplication1
{
    public partial class notes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlDataReader reader;
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            string query = "select * from notes";
            MySqlCommand cmd = new MySqlCommand(query, con);
            reader = cmd.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
            con.Close();

            MySqlDataReader reader2;

            MySqlConnection con2 = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con2.Open();
            string query2 = "select * from notice";
            MySqlCommand cmd2 = new MySqlCommand(query2, con2);
            reader2 = cmd2.ExecuteReader();
            Repeater2.DataSource = reader2;
            Repeater2.DataBind();
            con2.Close();
        }
    }
}