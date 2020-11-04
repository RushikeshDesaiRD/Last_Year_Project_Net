using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.Common;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class studen : System.Web.UI.Page
    {
        MySqlConnection objConn;

        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";

            string str;

            MySqlCommand com;

            object obj;
            MySqlConnection con = new MySqlConnection(strcon);

            con.Open();

            str = "select count(*) from admission where name=@UserName";

            com = new MySqlCommand(str, con);



            com.Parameters.AddWithValue("@UserName", TextBox1.Text);



            obj = com.ExecuteScalar();


            if (Convert.ToInt32(obj) != 0)

            {
                Application["Studentname"] = TextBox1.Text;
                Response.Redirect("bill.aspx");



            }

            else

            {

                Lab.Text = "invalid Student";

            }




            con.Close();
        }
    }
}