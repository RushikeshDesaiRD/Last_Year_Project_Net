﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applydb.aspx.cs" Inherits="WebApplication1.applydb" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="G:/crystalreportviewers13/js/crviewer/crv.js">
    </script> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            <CR:CrystalReportSource ID="CrystalReportSource1" runat="server"></CR:CrystalReportSource>
        </div>
    </form>
</body>
</html>
