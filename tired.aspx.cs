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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.IO;
namespace WebApplication1
{
    public partial class tired1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
          
            MySqlDataAdapter da = new MySqlDataAdapter();
            DataSet ds = new DataSet();
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
           
            da = new MySqlDataAdapter("select * from apply ", con);
            da.Fill(ds);
            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("tired.rpt"));
            rd.SetDataSource(ds.Tables[0]);
            CrystalReportViewer2.ReportSource = rd;
           

        }
    }
}