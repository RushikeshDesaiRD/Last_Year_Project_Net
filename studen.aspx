<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="studen.aspx.cs" Inherits="WebApplication1.studen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <br /><br />    <br /><br />
    <div class="container">
        
            <div class="style="width:60%;margin:Auto;">
                <div class="card shadow-lg p-5">
                    <asp:Label ID="Lab" ForeColor="#0099ff" CssClass="text-center" Font-Size="30px" runat="server" Text="Lab">Student Name</asp:Label>
                    <h1 class="text-primary">Name</h1>
                    <asp:TextBox ID="TextBox1" runat="server" Text="Student Name" Font-Size="20px" CssClass="form-control border-warning"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Size="20px" CssClass="btn btn-success shadow-lg p-4 text-white" Text="Bill" OnClick="Button1_Click" />
                   
                 </div>
           
        </div>
    </div>
  <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
