<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupreport.aspx.cs" Inherits="WebApplication1.signupreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

           <center>
               <br />
               <asp:ScriptManager ID="ScriptManager1" runat="server">
               </asp:ScriptManager>
               <br />
               <br />
               <br />
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="349px" Width="871px"></rsweb:ReportViewer>

               </center>
        </div>
    </form>
</body>
</html>
