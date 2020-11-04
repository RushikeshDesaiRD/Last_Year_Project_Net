<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avireports.aspx.cs" Inherits="WebApplication1.avireports" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="110px" />
            <br />
            <center>

         
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1000px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px">
            </rsweb:ReportViewer>
                 
          
           
     <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="1000px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px">
        </rsweb:ReportViewer>


  <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <rsweb:ReportViewer ID="ReportViewer3" runat="server" Width="1000px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px">
        </rsweb:ReportViewer>


                <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <rsweb:ReportViewer ID="ReportViewer4" Height="600px" runat="server" Width="1000px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px">
        </rsweb:ReportViewer>

                   <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        <rsweb:ReportViewer ID="ReportViewer5" Height="600px" runat="server" Width="1000px" BorderColor="#000066" BorderStyle="Solid" BorderWidth="2px">
        </rsweb:ReportViewer>

       </center>

    </form>
    
</body>
</html>
