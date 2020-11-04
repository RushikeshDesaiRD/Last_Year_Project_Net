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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("EmployeeCrystalReport.rpt"));
            CrystalReportViewer1.ReportSource = cryRpt;


        }
      
        /*  protected void Button1_Click(object sender, EventArgs e)
          {
              MySqlConnection conn = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
              conn.Open();
              string query = "select * from apply";
              MySqlDataAdapter myDa = new MySqlDataAdapter(query, conn);

              DataSet1 ds = new DataSet1();
              myDa.Fill(ds, "apply");
              ReportDocument crystalReport = new ReportDocument();

              crystalReport.Load(Server.MapPath("~/CrystalReport2.rpt"));
              crystalReport.SetDataSource(ds);
             CrystalReportViewer1.ReportSource = crystalReport;
              CrystalReportViewer1.DataBind();

              CrystalReportViewer1.RefreshReport();
              CrystalReportViewer1.Visible = true;

              conn.Close();
          }*/
    }
}