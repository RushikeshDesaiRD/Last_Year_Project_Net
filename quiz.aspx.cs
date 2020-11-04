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
    public partial class Quiz : System.Web.UI.Page
    {
        DateTime dt2;
        protected void Page_Load(object sender, EventArgs e)
        {

           String quizuser= Application["quizuser"].ToString();
           String quizcat= Application["quizcat"].ToString();
            name.Text = quizuser;
            if (!Page.IsPostBack)
            {
                Session["Timer"] = DateTime.Now.AddMinutes(1).ToString();
                MySqlDataReader reader;
                MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
                con.Open();
                string query = "select * from quiz where cat='"+quizcat+"'";
                MySqlCommand cmd = new MySqlCommand(query, con);

                reader = cmd.ExecuteReader();
                Repeater1.DataSource = reader;
                Repeater1.DataBind();






            }
        }
       
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int marks=0;
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
                        correctans.Text = "The Selected Answer Is <b>" + rb1.Text.ToString() + " Correct </b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                        correctans.Style.Add("padding", "10px");
                        marks = marks + 1;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption2");
                        wrongans.Text = "The Selected Answer Is <b>" + rb1.Text.ToString() + " Wrong </b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                        wrongans.Style.Add("padding", "10px");
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
                        correctans.Text = "The Selected Answer Is <b>" + rb2.Text.ToString() + " Correct </b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                        correctans.Style.Add("padding", "10px");
                        marks = marks + 1;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption2");
                        wrongans.Text = "The Selected Answer Is <b>" + rb2.Text.ToString() + " Wrong </b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                        wrongans.Style.Add("padding", "10px");
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
                        correctans.Text = "The Selected Answer Is <b>" + rb3.Text.ToString() + " Correct </b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                        correctans.Style.Add("padding", "10px");
                        marks = marks + 1;
                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption2");
                        wrongans.Text = "The Selected Answer Is <b>" + rb3.Text.ToString() + " Wrong </b>";
                        wrongans.ForeColor = System.Drawing.Color.Red;
                        wrongans.Style.Add("padding", "10px");
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
                        correctans.Text = "The Selected Answer Is <b>" + rb4.Text.ToString() + " Correct </b>";
                        correctans.ForeColor = System.Drawing.Color.Green;
                        correctans.Style.Add("padding", "10px");
                        marks = marks + 1;

                    }
                    else
                    {
                        Label wrongans = (Label)ri.FindControl("LabUserSelectedOption2");
                        wrongans.Text = "The Selected Answer Is <b>" + rb4.Text.ToString() + " Wrong </b>";
                       
                        wrongans.ForeColor = System.Drawing.Color.Red;
                        wrongans.Style.Add("padding", "10px");
                    }

                }

            }

            mark1.Text = marks.ToString()+"Out Of 5";

        }

        protected void tick_goes(object sender, EventArgs e)
        {
          //  label1.Text = "Time : " + DateTime.Now.ToString("hh:mm:ss");
            if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {
                label2.Text = "left...." + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes)
               .ToString() + " Minutes " + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60 )
               .ToString() + "Seconds";
            }
            else
            {
                BtnSubmit.Visible = false;
                label2.Text = "Time Expired..";

                BtnSubmit_Click(sender, e);
            }
            
        }
       
       
    }
    }