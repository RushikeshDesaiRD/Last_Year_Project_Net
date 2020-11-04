using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using Microsoft.Reporting.WebForms;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
namespace WebApplication1
{
    public partial class reportnotesandnotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bindReport();
        }
        protected void bindReport()
        {
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("select * from notes", con);


            DataTable dt = new DataTable("DataTable5");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report12.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("RushiDataSet", dt));
            ReportViewer1.LocalReport.Refresh();

            MySqlDataAdapter da2 = new MySqlDataAdapter("select * from notice", con);


            DataTable dt2 = new DataTable("DataTable6");
            da2.Fill(dt2);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report13.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("RushiDataSet", dt2));
            ReportViewer2.LocalReport.Refresh();
        }
    }
}