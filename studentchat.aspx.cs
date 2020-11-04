using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class studentchat : System.Web.UI.Page
    {
        string ChatUserName;

        MySqlConnection objConn;

        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConnString;
            strConnString = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();
            BindData();
        }
        protected void BindData()

        {

            String strSQL;

            strSQL = "select * from cha ";



            MySqlDataReader dtReader;

            objCmd = new MySqlCommand(strSQL, objConn);
            dtReader = objCmd.ExecuteReader();
            //*** BindData to Repeater ***//
            Repeater1.DataSource = dtReader;
            Repeater1.DataBind();
            dtReader.Close();
            dtReader = null;

        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DateTime aDate = DateTime.Now;
            string s = aDate.ToString("hh:mm tt").ToString();
            if (Application["ChatUserName"] != null)
            {
                ChatUserName = Application["ChatUserName"].ToString();
            }

            String query = "insert into cha(msg,time,name) values('" + TextBox1.Text + "','" + s + "','" + ChatUserName + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TextBox1.Text = "Type Your Message";
            BindData();
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Application["ChatUserName"] != null)
            {
                ChatUserName = Application["ChatUserName"].ToString();
            }
            DateTime aDate = DateTime.Now;
            string s = aDate.ToString("hh:mm tt").ToString();
            string smile = "img/smile.png";
            string query = "insert into cha(img,time,name) values('" + smile + "','" + s + "','" + ChatUserName + "');";
            MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (Application["ChatUserName"] != null)
            {
                ChatUserName = Application["ChatUserName"].ToString();
            }
            DateTime aDate = DateTime.Now;
            string s = aDate.ToString("hh:mm tt").ToString();
            string unhappy = "img/unhappy.png";
            string query = "insert into cha(img,time,name) values('" + unhappy + "','" + s + "','" + ChatUserName + "')";
            MySqlConnection conn = new MySqlConnection("server =127.0.0.1;uid=root;pwd=mahavirdesai;database=stud");
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (Application["ChatUserName"] != null)
            {
                ChatUserName = Application["ChatUserName"].ToString();
            }
            DateTime aDate = DateTime.Now;
            string s = aDate.ToString("hh:mm tt").ToString();
            string crayying = "img/crayying.png";
            string query = "insert into cha(img,time,name)values('" + crayying + "','" + s + "','" + ChatUserName + "')";
            MySqlConnection conn = new MySqlConnection("server =127.0.0.1;uid=root;pwd=mahavirdesai;database=stud");
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            BindData();

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            if (Application["ChatUserName"] != null)
            {
                ChatUserName = Application["ChatUserName"].ToString();
            }
            DateTime aDate = DateTime.Now;
            string s = aDate.ToString("hh:mm tt").ToString();
            string thum = "img/thum.png";
            string query = "insert into cha(img,time,name)values('" + thum + "','" + s + "','" + ChatUserName + "')";
            MySqlConnection conn = new MySqlConnection("server =127.0.0.1;uid=root;pwd=mahavirdesai;database=stud");
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            string query = "delete from cha";
            MySqlConnection conn = new MySqlConnection("server =127.0.0.1;uid=root;pwd=mahavirdesai;database=stud");
            conn.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            BindData();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index2.aspx");
        }
    }
}