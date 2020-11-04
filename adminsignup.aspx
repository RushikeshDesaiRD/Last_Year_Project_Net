<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="adminsignup.aspx.cs" Inherits="WebApplication1.adminsignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br /><br />
    <div class="container">
        <div style="width:50%;margin:auto;" class="card shadow-lg p-5">
            <div class="form-group">
                <asp:Label ID="Label1" Font-Size="25px" CssClass="text-primary text-center"  runat="server" Text="Admin"></asp:Label>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label2" Font-Size="20px" CssClass="text-primary text-center"  runat="server" Text="Admin Name"></asp:Label>
                <asp:TextBox ID="TextBox1" CssClass="form-control" Text="Name" Font-Size="25px" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:Label ID="Label3" Font-Size="25px" CssClass="text-primary text-center"  runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="form-control" Text="Password" TextMode="Password" Font-Size="25px" runat="server"></asp:TextBox>
            </div>
            <div class="form--group">
                 
                <asp:Button ID="Button1" CssClass="btn btn-primary" Font-Size="20px" ForeColor="White" runat="server" Text="LOG In" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
