<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admissionreport.aspx.cs" Inherits="WebApplication1.admissionreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
              <center>
              <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="110px" />
            <br />
<rsweb:ReportViewer Height="800px" Width="1200px" BorderColor="Black" BorderWidth="2px" ID="ReportViewer1" runat="server"></rsweb:ReportViewer>

              <br />
                </center>
        </div>
        </div>
    </form>
</body>
</html>
