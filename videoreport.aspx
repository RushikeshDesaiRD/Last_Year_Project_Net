﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="videoreport.aspx.cs" Inherits="WebApplication1.videoreport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
              <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="110px" />
            <br />
              <br />
              <rsweb:ReportViewer BorderColor="Black" BorderWidth="2px" ID="ReportViewer1" runat="server" Height="600px" Width="913px">
              </rsweb:ReportViewer>
                </center>
        </div>
    </form>
</body>
</html>