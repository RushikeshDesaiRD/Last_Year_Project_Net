<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="quizstart.aspx.cs" Inherits="WebApplication1.quizstart_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br /><br>
    <div class="container">
        <div class="card p-5 shadow-lg">
            <div class="row">
                <div class="col-5">
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox  CssClass="form-control" placeholder="Enter Your Nick Name" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="col-2">
                     <div class="form-group">
                         <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" Font-Size="30px" ForeColor="red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                     </div>
                 </div>
                 <div class="col-5">
                      <div class="form-group">
                           <asp:DropDownList ID="quizcat" Font-Size="15px"  CLASS="form-control" runat="server">
                                    <asp:ListItem Selected="True">-----CHOOSE HERE----</asp:ListItem>
                                    <asp:ListItem Value="Programming">Programming</asp:ListItem>
                                    <asp:ListItem Value="Physics">Physics</asp:ListItem>
                                    <asp:ListItem Value="Chemistory">Chemistory</asp:ListItem>
                                    <asp:ListItem Value="Biology">Biology</asp:ListItem>
                                    <asp:ListItem Value="English">English</asp:ListItem>
                                    <asp:ListItem Value="Mathmatics">Mathmatics</asp:ListItem>
                                    <asp:ListItem Value="Statstics">Statstics</asp:ListItem>
                                    <asp:ListItem Value="Resoning">Resoning</asp:ListItem>
                                    <asp:ListItem Value="General Kowldge">General Kowldge</asp:ListItem>
                                   
                                </asp:DropDownList>
                     </div>
                     
                 </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Quiz Start" sClass="btn btn-primary shadow-lg" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
