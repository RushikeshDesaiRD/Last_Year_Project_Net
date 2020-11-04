<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApplication1.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="container">
        <div class="card shadow-lg p-5" style="width:50%;margin:auto">
               <h2 class="text-center text-primary p-4">Payment</h2>   
               <div class="form-group">
                   <asp:Label ID="Label1" runat="server" Font-Size="25px" CssClass="text-warning" Text="First Name"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
             <div class="form-group">
                  <asp:Label ID="Label3" runat="server" Font-Size="25px" CssClass="text-warning" Text="Email"></asp:Label>
                     <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
            </div>
             <div class="form-group">
                  <asp:Label ID="Label4" runat="server" Font-Size="25px" CssClass="text-warning" Text="Contact"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
             </div>
               <div class="form-group">
                   <asp:Label ID="Label5" Font-Size="25px" cssClass="text-warning p-2" runat="server" Text="Total Payment"></asp:Label>
                     <asp:Label ID="Label2" CssClass="text-primary p-2" Font-Size="30px" runat="server" Text=""></asp:Label>
                    </div>
  
    <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
     <div class="form-group">
    <asp:Button ID="Button2"  runat="server" Font-Size="30px" CssClass="p-2 btn btn-primary shadow-lg" ForeColor="White"  Text="Pay" OnClick="Button2_Click"   />
                     </div>
        </div>
    </div
    <br /> <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
