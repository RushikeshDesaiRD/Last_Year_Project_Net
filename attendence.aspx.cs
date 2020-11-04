using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
namespace WebApplication1
{
    public partial class attendence : System.Web.UI.Page
    {
        String sclass1;
        String studentname1;
        String status1;
        String yeare;
        String dateofclass1;
        String sclass1t;
        protected void Page_Load(object sender, EventArgs e)
        {


         

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            int year = Convert.ToInt32(DropDownList2.SelectedValue);
           
            MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
          
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (year == 1)
            {
                cmd.CommandText = "Select name,course,year from admission where course='" + DropDownList1.SelectedValue + "' and year=1";
            }
            else if (year == 2)
            {
                cmd.CommandText = "Select name,course,year from admission where course='" + DropDownList1.SelectedValue + "' and year=2";
            }
            else
            {
                cmd.CommandText = "Select name,course,year from admission where course='" + DropDownList1.SelectedValue + "' and year=3";
            }

         
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter ds = new MySqlDataAdapter(cmd);
            ds.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
            
              
                 studentname1 = row.Cells[1].Text;
                RadioButton rbtn1 = (row.Cells[0].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[0].FindControl("RadioButton2") as RadioButton);
               
                if (rbtn1.Checked)
                {
                    status1 = "Present";

                }
                else
                {
                    status1 = "Absent";

                }
                 yeare = DropDownList2.SelectedValue;
                 dateofclass1 = DateTime.Now.ToShortDateString();
                 sclass1 = DropDownList1.SelectedItem.Text;
                saveattendance(studentname1, dateofclass1, status1, sclass1, yeare);
            }
            Label4.Text = "Attendance Has Been Saved Successfully";
        }
        private void saveattendance(String studentname, String dateofclass1, String status, String sclass,String yeare)
        {
            String teachername = DropDownList3.SelectedValue;
            MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            String query = "insert into attendence(name,dateofclass,attendencestatus,class,year,teachername) values('" + studentname + "','" + dateofclass1 + "','" + status + "','" + sclass + "','" + yeare + "','"+teachername+"')";

            

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
           
          
        }
    }
   
}