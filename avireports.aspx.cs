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
    public partial class avireports : System.Web.UI.Page
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
            MySqlDataAdapter da = new MySqlDataAdapter("select * from avifeedback", con);


            DataTable dt = new DataTable("DataTable1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report3.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("AviDataSet", dt));
            ReportViewer1.LocalReport.Refresh();



            MySqlDataAdapter da1 = new MySqlDataAdapter("select * from dignostics", con);


            DataTable dt1 = new DataTable("DataTable2");
            da1.Fill(dt1);
            ReportViewer2.ProcessingMode = ProcessingMode.Local;
            ReportViewer2.LocalReport.ReportPath = Server.MapPath("Report4.rdlc");
            ReportViewer2.LocalReport.DataSources.Clear();
            ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("AviDataSet", dt1));
            ReportViewer2.LocalReport.Refresh();


            MySqlDataAdapter da2 = new MySqlDataAdapter("select * from medicine", con);


            DataTable dt2 = new DataTable("DataTable3");
            da2.Fill(dt2);
            ReportViewer3.ProcessingMode = ProcessingMode.Local;
            ReportViewer3.LocalReport.ReportPath = Server.MapPath("Report5.rdlc");
            ReportViewer3.LocalReport.DataSources.Clear();
            ReportViewer3.LocalReport.DataSources.Add(new ReportDataSource("AviDataSet", dt2));
            ReportViewer3.LocalReport.Refresh();




            MySqlDataAdapter da3 = new MySqlDataAdapter("select * from medicineorder", con);


            DataTable dt3 = new DataTable("DataTable4");
            da3.Fill(dt3);
            ReportViewer4.ProcessingMode = ProcessingMode.Local;
            ReportViewer4.LocalReport.ReportPath = Server.MapPath("Report6.rdlc");
            ReportViewer4.LocalReport.DataSources.Clear();
            ReportViewer4.LocalReport.DataSources.Add(new ReportDataSource("AviDataSet", dt3));
            ReportViewer4.LocalReport.Refresh();



            MySqlDataAdapter da4 = new MySqlDataAdapter("select * from alldeepak", con);


            DataTable dt4 = new DataTable("DataTable5");
            da4.Fill(dt4);
            ReportViewer5.ProcessingMode = ProcessingMode.Local;
            ReportViewer5.LocalReport.ReportPath = Server.MapPath("Report7.rdlc");
            ReportViewer5.LocalReport.DataSources.Clear();
            ReportViewer5.LocalReport.DataSources.Add(new ReportDataSource("AviDataSet", dt4));
            ReportViewer5.LocalReport.Refresh();
            con.Close();
        }
    }
}