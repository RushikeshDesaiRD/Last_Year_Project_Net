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
    public partial class rdlc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                bindReport();
            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


           

        }

        protected void bindReport()
        {
            MySqlConnection con = new MySqlConnection("server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud");
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("select * from admission", con);


            DataTable dt = new DataTable("DataTable1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report1.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
            con.Close();
        }

    }
}