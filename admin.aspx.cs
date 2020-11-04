using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;
namespace WebApplication1
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            FileUpload1.SaveAs(Server.MapPath("~/admin/") + Path.GetFileName(FileUpload1.FileName));
            String link = "admin/" + Path.GetFileName(FileUpload1.FileName);


            String query = "insert into notes(name,subject,des,file) values('" + from.Text + "','" + Subject.Text + "','" + Des.Text + "','" + link + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label7.Text = "Added Successfully";


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/admin/") + Path.GetFileName(FileUpload2.FileName));
            String link = "admin/" + Path.GetFileName(FileUpload2.FileName);


            String query = "insert into notice(name,subject,des,file) values('" + Teacher.Text + "','" + Noticesub.Text + "','" + noticedes.Text + "','" + link + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label6.Text = "Added Successfully";
        }
        protected void Add_video(object sender, EventArgs e)
        {
            DateTime a = DateTime.Now;
          string datee= a.ToString("dd/mm/yyyy");
            video.SaveAs(Server.MapPath("~/video/") + Path.GetFileName(video.FileName));
            String link = "video/" + Path.GetFileName(video.FileName);


            String query = "insert into video(path,date,name,catgeory) values('" + link + "','" + datee + "','" + vname.Text + "','" + Vcat.Text + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label11.Text = "Added Successfully";
        }
        protected void Add_Book(object sender, EventArgs e)
        {
          
           
            video.SaveAs(Server.MapPath("~/pdfs/") + Path.GetFileName(bookpdf.FileName));
            String link = "pdfs/" + Path.GetFileName(bookpdf.FileName);
            video.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(imgbook.FileName));
            String link2 = "img/" + Path.GetFileName(imgbook.FileName);


            String query = "insert into book(name,img,path) values('" + bookname.Text + "','" + link2 + "','" + link + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label13.Text = "Added Successfully";
        }
        protected void Add_Quiz(object sender, EventArgs e)
        {
      
           
           String query = "insert into quiz(question,option1,option2,option3,option4,answer,cat) values('" + Q.Text + "','" + o1.Text + "','" + o2.Text + "','" + o3.Text + "','" + o4.Text + "','" + ans.Text + "','"+ quizcat.Text + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
           
            ViewState["count"] = Convert.ToInt32(ViewState["count"]) + 1;
            satus.Text = ViewState["count"].ToString();
            int b = Convert.ToInt32(ViewState["count"]);
            if (b==5)
            {
                Button5.Visible = false;
            }

        }

    }
}