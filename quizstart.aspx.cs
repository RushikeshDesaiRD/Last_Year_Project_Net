using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class quizstart_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Application["quizuser"] = TextBox1.Text;
            Application["quizcat"] = quizcat.SelectedValue;
            Response.Redirect("quiz.aspx");
        }
    }
}