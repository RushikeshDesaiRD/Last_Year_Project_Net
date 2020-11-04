<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="admin2.aspx.cs" Inherits="WebApplication1.admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br /><br />
    <div class="container-fluid">
    <div class="card shadow-lg p-5 ">
        <table class="table table-stripped table-hover table-bordered text-center" >
            <thead class="bg-warning text-primary">
                <th><h2>Image</h2></th>
                <th><h2>Name</h2></th>
                <th><h2>Address</h2></th>
                <th><h2>Contact</h2></th>
                <th><h2>Course</h2></th>
                  <th><h2>Year</h2></th>
                  <th><h2>Basic Qulifaction</h2></th>
                  <th><h2>Enterance Exam</h2></th>
                  <th><h2><i class="fa fa-pencil"></i> View</h2></th>
               
            </thead>
            <asp:Repeater ID="Repeater1" runat="server" >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>
            <tbody>
                <tr>
                    <td><img src="<%# DataBinder.Eval(Container.DataItem, "img") %>" class="img-responsive" style="width:200px;height:150px"/></td>
                     <th><h2><%# DataBinder.Eval(Container.DataItem, "name") %></h2></th>
                <th><h2><%# DataBinder.Eval(Container.DataItem,"address") %></h2></th>
                <th><h2><%# DataBinder.Eval(Container.DataItem,"contact") %></h2></th>
                <th><h2><%# DataBinder.Eval(Container.DataItem,"course") %></h2></th>
                  <th><h2><%# DataBinder.Eval(Container.DataItem,"year") %></h2></th>
                  <th><h2><%# DataBinder.Eval(Container.DataItem,"bq") %></h2></th>
                  <th><h2><%# DataBinder.Eval(Container.DataItem,"ex") %></h2></th>
                     <th><h2><a href="Edit2.aspx?abc=<%# DataBinder.Eval(Container.DataItem,"contact") %>"><i class="fa fa-eye" aria-hidden="true"></i></a></h2> </th>
              
                </tr>
            </tbody>
                     </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</div>
    <br /><br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
