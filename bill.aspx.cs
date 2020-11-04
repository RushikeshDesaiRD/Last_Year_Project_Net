using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using MySql.Data.MySqlClient;
namespace WebApplication1
{
    public partial class bill : System.Web.UI.Page
    {
        MySqlConnection objConn;

        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name;

            if (Application["Studentname"] != null)
            {

                Name = Application["Studentname"].ToString();
            }







            String strConnString;
            strConnString = "server = 127.0.0.1; uid = root; pwd = mahavirdesai; database = stud";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();
            String strSQL;

            strSQL = "select * from admission where name='" + Application["Studentname"] + "'; ";



            MySqlDataReader dtReader;

            objCmd = new MySqlCommand(strSQL, objConn);
            dtReader = objCmd.ExecuteReader();

            Repeater1.DataSource = dtReader;

            Repeater1.DataBind();
            total.Text = dtReader["total"].ToString();
            dtReader.Close();
            dtReader = null;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=StudentBill.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Repeater1.RenderControl(hw);

            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx?total=" + total.Text);
        }
    }
}