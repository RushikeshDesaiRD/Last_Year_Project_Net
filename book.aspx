﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="WebApplication1.book" %>

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
                <rsweb:ReportViewer ID="ReportViewer1" Height="1000px" Width="1000px" BorderColor="Black" BorderWidth="2px" runat="server">
                </rsweb:ReportViewer> 
              <br />
                </center>
        </div>
    </form>
</body>
</html>
