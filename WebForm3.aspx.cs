using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Text;
using System.Globalization;
namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MySqlDataReader reader;
                MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
                con.Open();
                string query = "select * from quiz";
                MySqlCommand cmd = new MySqlCommand(query, con);
                
                reader = cmd.ExecuteReader();
                Repeater1.DataSource = reader;
                Repeater1.DataBind();



        
              
               
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
           
            foreach (RepeaterItem ri in Repeater1.Items)
            {

                RadioButton rb1 = (RadioButton)ri.FindControl("RadOption1");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAns");
                labcorrectans.Visible = true;
                if (rb1.Checked)
                {
                    if (rb1.Text.Equals(labcorrectans.Text))
                    {
                        Label correctans = (Label)ri.FindControl("LabUserSelectedOption");
                        correctans.Text = "The Selected Answer Is <b>" + rb1.Text.ToString() + "</b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption");
                        wrongans.Text = "The Selected Answer Is <b>" + rb1.Text.ToString() + "</b>";
                       wrongans.ForeColor = System.Drawing.Color.Red;
                    }
                    
                }

            }




            foreach (RepeaterItem ri in Repeater1.Items)
            {

                RadioButton rb2 = (RadioButton)ri.FindControl("RadOption2");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAns");
                labcorrectans.Visible = true;
                if (rb2.Checked)
                {
                    if (rb2.Text.Equals(labcorrectans.Text))
                    {
                        Label correctans = (Label)ri.FindControl("LabUserSelectedOption");
                        correctans.Text = "The Selected Answer Is <b>" + rb2.Text.ToString() + "</b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption");
                        wrongans.Text = "The Selected Answer Is <b>" + rb2.Text.ToString() + "</b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                    }

                }

            }

            foreach (RepeaterItem ri in Repeater1.Items)
            {

                RadioButton rb3 = (RadioButton)ri.FindControl("RadOption3");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAns");
                labcorrectans.Visible = true;
                if (rb3.Checked)
                {
                    if (rb3.Text.Equals(labcorrectans.Text))
                    {
                        Label correctans = (Label)ri.FindControl("LabUserSelectedOption");
                        correctans.Text = "The Selected Answer Is <b>" + rb3.Text.ToString() + "</b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption");
                        wrongans.Text = "The Selected Answer Is <b>" + rb3.Text.ToString() + "</b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                    }

                }

            }



            foreach (RepeaterItem ri in Repeater1.Items)
            {

                RadioButton rb4 = (RadioButton)ri.FindControl("RadOption4");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAns");
                labcorrectans.Visible = true;
                if (rb4.Checked)
                {
                    if (rb4.Text.Equals(labcorrectans.Text))
                    {
                        Label correctans = (Label)ri.FindControl("LabUserSelectedOption");
                        correctans.Text = "The Selected Answer Is <b>" + rb4.Text.ToString() + "</b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption");
                        wrongans.Text = "The Selected Answer Is <b>" + rb4.Text.ToString() + "</b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                    }

                }

            }














        }

     
    }
}