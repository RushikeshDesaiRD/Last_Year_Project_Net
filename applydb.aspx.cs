using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
namespace WebApplication1
{
    public partial class applydb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");

            ReportDocument rdoc = new ReportDocument();
            string aaPath = @"C:/Users/Vaibhav/source/repos/WebApplication1/WebApplication1/CrystalReport5";
        }
    }
}