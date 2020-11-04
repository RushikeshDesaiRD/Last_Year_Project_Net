using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");

            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (TextBox1.Text == "Student Name")
            {
                cmd.CommandText = "Select * from attendence where class='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "' and dateofclass='" + Label1.Text + "'and teachername='" + DropDownList3.SelectedValue + "'";
            }
            else
            {
                cmd.CommandText = "Select * from attendence where class='" + DropDownList1.SelectedValue + "' and year='" + DropDownList2.SelectedValue + "'and name='"+TextBox1.Text+"'  and dateofclass='" + Label1.Text + "'and teachername='" + DropDownList3.SelectedValue + "'";
            }
          

           
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter ds = new MySqlDataAdapter(cmd);
            ds.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
          
           
        }

    }
}