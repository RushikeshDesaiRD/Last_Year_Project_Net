<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="WebApplication1.video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="container-fluid p-5 text-white" style="background:black;">
        <div class="container">
            <br /><br />
            <div style="margin:auto;width:60%;display:flex">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="video-filter-input" style="width:70%">
                    <asp:ListItem Value="All">All</asp:ListItem>
                     <asp:ListItem Value="Mathmatics">Mathmatics</asp:ListItem>
                    <asp:ListItem Value="Prgramming">Programming</asp:ListItem>
                     <asp:ListItem Value="Chemistry">Chemistry</asp:ListItem>
                     <asp:ListItem Value="physics">Physics</asp:ListItem>
                     <asp:ListItem Value="Biology">Biology</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" CssClass="video-filter-btn" Text="Search" style="width:30%" OnClick="Button1_Click" />
            </div>
            <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <br /><br /> <br /><br /> <br /><br />
        <div class="row">
        
            <div class="col-7">
                <video width="100%" controls>
               <source src="<%# DataBinder.Eval(Container.DataItem,"path") %>" type="video/mp4">
               <source src="<%# DataBinder.Eval(Container.DataItem,"path") %>"" type="video/ogg">
               Your browser does not support HTML5 video.
               </video>
                
                
            </div>
             <div class="col-5 p-5">
               <h1 style="font-weight:bolder"> <%# DataBinder.Eval(Container.DataItem,"name") %></h1>
                 <h2> <%# DataBinder.Eval(Container.DataItem,"date") %></h2>
                 <p> <%# DataBinder.Eval(Container.DataItem,"catgeory") %></p>
            </div>
        </div>
             
        </ItemTemplate>
    </asp:Repeater>
            </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
