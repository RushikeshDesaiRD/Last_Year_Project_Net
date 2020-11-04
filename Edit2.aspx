<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Edit2.aspx.cs" Inherits="WebApplication1.Edit2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
      <br /><br />
        <div class="container">
            <div class="card shadow-lg p-5">
                <div class="row">
                    <div class="col-5">
                        <asp:Image ID="Image1" runat="server" class="img-fluid"/>
                        <asp:Label ID="UpadteNotificaton" runat="server" ForeColor="#0099ff" Text="Cancel Or Approve" Font-Size="40px"></asp:Label>
                    </div>
                    <div class="col-7">
                        <div class="form-group">
                            <asp:Label ID="Label1" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Name"></asp:Label>
                            <asp:TextBox ID="TextBox1"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label2" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Address"></asp:Label>
                            <asp:TextBox ID="TextBox2"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label3" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Contact"></asp:Label>
                            <asp:TextBox ID="TextBox3"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label4" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Course"></asp:Label>
                            <asp:TextBox ID="TextBox4"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label5" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Year"></asp:Label>
                            <asp:TextBox ID="TextBox5"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label6" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Basic Qulification"></asp:Label>
                            <asp:TextBox ID="TextBox6" CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                              <asp:Label ID="Label7" Font-Size="Larger" ForeColor="#ff9900" runat="server" Text="Enterance Exam"></asp:Label>
                            <asp:TextBox ID="TextBox7"  CssClass="form-control form-control-edit" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Update" Font-Size="30px" ForeColor="white" CssClass="btn btn-warning shadow-lg p-2" Width="200px" runat="server" Text="Approve" OnClick="Update_Click" />
                            <asp:Button ID="Button1"  Font-Size="25px" ForeColor="white" CssClass="btn btn-danger shadow-lg p-2" Width="200px" runat="server" Text="Dont Approve" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
       

          
      <br /><br /
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
