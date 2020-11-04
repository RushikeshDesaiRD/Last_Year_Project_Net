using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.Common;
using System.IO;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Threading;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using MySql.Data.Common;
using System.IO;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Threading;

namespace WebApplication1
{
    public partial class apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Request.InputStream.Length > 0)
                {
                    using (StreamReader reader = new StreamReader(Request.InputStream))
                    {
                        string hexString = Server.UrlEncode(reader.ReadToEnd());


                        string myimageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");

                        string imagePath = string.Format("~/SavedImages/{0}.png", myimageName);

                        string link = string.Format("~/SavedImages/{0}", myimageName);

                        String query = "insert into apply(name,address,contact,course,year,bq,ex,img) values('" + name.Text + "','" + address.Text + "','" + contact.Text + "','" + course.Text + "','" + DropDownList3.Text + "','" + qualification.Text + "','" + TextBox4.Text + "','" + link + "')";

                        MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
                        con.Open();
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.CommandText = query;
                        cmd.Connection = con;
                        cmd.ExecuteNonQuery();
                       
                      


                        File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString));
                        Session["CapturedImage"] = ResolveUrl(imagePath);





                    }
                }
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload1.FileName));
            string link = "img/" + Path.GetFileName(FileUpload1.FileName);

            String query = "insert into apply(name,address,contact,course,year,bq,ex,img) values('" + name.Text + "','" + address.Text + "','" + contact.Text + "','" + course.Text + "','" + DropDownList3.Text + "','" + qualification.Text + "','" + TextBox4.Text + "','" + link + "')";

            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();




        }
        private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;

        }

        [WebMethod(EnableSession = true)]
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            HttpContext.Current.Session["CapturedImage"] = null;
            return url;

        }
    }
}