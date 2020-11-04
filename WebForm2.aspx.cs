using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;
using MySql.Data.Common;
using MySql.Data.MySqlClient;
namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {

                if (Request.Cookies["rushi-uname"] != null)
                {
                   TextBox2.Text = Request.Cookies["rushi-uname"].Value;
                }
                if (Request.Cookies["rushi-pwd"] != null)
                {
                   TextBox3.Attributes.Add("value", Request.Cookies["rushi-pwd"].Value);

                }

                if (Request.Cookies["rushi-uname"] != null && Request.Cookies["rushi-pwd"] != null)
                {
                    CheckBox1.Checked = true;
                }

            }
            GoogleConnect.ClientId = "446009614366-604tllf08vuiri0khehib88emvodauue.apps.googleusercontent.com";
            GoogleConnect.ClientSecret = "zp2-OZPzW6SSPzusni1G7HrS";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            {
                string code = Request.QueryString["code"];
                string json = GoogleConnect.Fetch("me", code);
                GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
                Label3.Text = profile.Id;
                Label4.Text = profile.DisplayName;
                Label5.Text = profile.Emails.Find(email => email.Type == "account").Value;


              
            }
            if (Request.QueryString["error"] == "access_denied")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            }

        }

       
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");
        }
       
        public class GoogleProfile
        {
            public string Id { get; set; }
            public string DisplayName { get; set; }
            public Image Image { get; set; }
            public List<Email> Emails { get; set; }
            public string Gender { get; set; }
            public string ObjectType { get; set; }
        }

        public class Email
        {
            public string Value { get; set; }
            public string Type { get; set; }
        }

        public class Image
        {
            public string Url { get; set; }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
        protected void signup_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "mykey", "showAlert();", true);
            String query = "insert into signup(name,email,password) values('" + name.Text + "','" + email.Text + "','" + password.Text + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

           
            Application["ChatUserName"] = name.Text;
            Response.Redirect("studentchat.aspx");
        }
        protected void Login_Click(object sender, EventArgs e)
        {

            string strcon = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";

            string str;

            MySqlCommand com;

            object obj;
            MySqlConnection con = new MySqlConnection(strcon);

            con.Open();

            str = "select count(*) from signup where name=@UserName and password =@Password";

            com = new MySqlCommand(str, con);



            com.Parameters.AddWithValue("@UserName", TextBox2.Text);

            com.Parameters.AddWithValue("@Password", TextBox3.Text);

            obj = com.ExecuteScalar();

            Application["ChatUserName"] = TextBox2.Text;

            if (CheckBox2.Checked == true)
            {

                Response.Cookies["rushi-uname"].Value = TextBox2.Text;
                Response.Cookies["rushi-pwd"].Value = TextBox3.Text;
                Response.Cookies["rushi-uname"].Expires = DateTime.Now.AddDays(10);
                Response.Cookies["rushi-pwd"].Expires = DateTime.Now.AddDays(10);
                Response.Redirect("studentchat.aspx");
            }
            else
            {
                Response.Cookies["rushi-uname"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["rushi-pwd"].Expires = DateTime.Now.AddDays(-1);
            }



            con.Close();
        }
    }
}