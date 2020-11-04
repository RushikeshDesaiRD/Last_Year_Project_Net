using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class video : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AttachData();
        }
        public void AttachData()
        {
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            string query = "select * from video";
            MySqlCommand objCmd;
            MySqlDataReader dtReader;
            objCmd = new MySqlCommand(query, con);
            dtReader = objCmd.ExecuteReader();
            Repeater1.DataSource = dtReader;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string catageory = DropDownList1.SelectedValue;
            string query;
            if (catageory != "All")
            {
                query = "select * from video where catgeory='" + catageory + "'";
            }
            else
            {
                query = "select * from video";
            }
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();

            MySqlCommand objCmd;
            MySqlDataReader dtReader;
            objCmd = new MySqlCommand(query, con);
            dtReader = objCmd.ExecuteReader();
            Repeater1.DataSource = dtReader;
            Repeater1.DataBind();
        }
    }
}