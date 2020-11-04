using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.Common;
using System.IO;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections.Specialized;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.Common;
using System.IO;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Threading;
namespace WebApplication1
{
    public partial class Edit2 : System.Web.UI.Page
    {
        string courseName;
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection objConn;

            MySqlCommand objCmd;
            var abcFromUrl = Request.QueryString["abc"] ?? string.Empty;


            String strConnString;
            strConnString = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();
            String strSQL;


            strSQL = "select * from apply where contact = '" + abcFromUrl + "'; ";



            MySqlDataReader dtReader;

            objCmd = new MySqlCommand(strSQL, objConn);
            dtReader = objCmd.ExecuteReader();

            if (dtReader.Read())
            {
                courseName = dtReader["course"].ToString();
                Image1.ImageUrl = dtReader["img"].ToString();
                TextBox1.Text = dtReader["name"].ToString();
                TextBox2.Text = dtReader["address"].ToString();
                TextBox3.Text = dtReader["contact"].ToString();
                TextBox4.Text = dtReader["course"].ToString();
                TextBox5.Text = dtReader["year"].ToString();
                TextBox6.Text = dtReader["bq"].ToString();
                TextBox7.Text = dtReader["ex"].ToString();
            }
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            string destinationaddr = "91" + TextBox3.Text;

            string message = " Hi " + TextBox1.Text + " ,Your Admmisssion is Done Completed in" + TextBox4.Text + "in Year" + TextBox5.Text + " For The Other Process Click Below Link https://rushikesh7890aaaa.github.io/jcj.github.io/  And Pay Your Fee in Bill Menu...!";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
              /*  byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "DnOHpd5MVGg-t7Vm77fuGTTXu7Le1dOvvEx8d3Yz3x"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                */
                UpadteNotificaton.Text = "Completed....";
            }
            int FEE, TOTAL;
            if (courseName == "B.C.A.")
            {

                FEE = 10000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "B.C.S.")
            {
                FEE = 8000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "B.A.")
            {
                FEE = 1000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "B.COM.")
            {
                FEE = 2000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "M.COM.")
            {
                FEE = 3000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "M.A")
            {
                FEE = 5000;
                TOTAL = FEE + 1830;
            }
            else if (courseName == "B.S.C.")
            {
                FEE = 600;
                TOTAL = FEE + 1830;
            }
            else
            {
                FEE = 1000;
                TOTAL = FEE + 1830;
            }



            String query = "insert into admission(name,address,contact,course,year,bq,ex,img,fee,total) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + Image1.ImageUrl + "','" + FEE + "','" + TOTAL + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DeleteData();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DeleteData();
        }
        private void DeleteData()
        {
            MySqlConnection objConn;
            MySqlCommand objCmd;
            String strConnString;
            strConnString = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();
            String strSQL;

            strSQL = "delete from apply where contact='" + TextBox3.Text + "'";
            objCmd = new MySqlCommand(strSQL, objConn);
            objCmd.ExecuteNonQuery();
            UpadteNotificaton.Text = "Completed....!";
        }
    }
}