<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="libray.aspx.cs" Inherits="WebApplication1.libray" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="library-fix-background">
        <br /><br />
        
            
                  <div class="container mt-5">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                          
                       
                   
                       

                          
                          
                     
                           
                       
                        




 
                               
                    
  

                            <div class="card-book" style="background:black">
                                <div style="width:70%;">
                                  <img src="<%# DataBinder.Eval(Container.DataItem,"img") %>" class="img-fluid"/>
                                </div>
                                <div style="width:70%;">
                                    <br /><br /><br />
                                    <h1 class="text-white" style="font-weight:bolder;font-size:30px;"><%# DataBinder.Eval(Container.DataItem,"name") %></h1>
                                    <br /><br />
                                  <a Class="libray-read-button" href="<%# DataBinder.Eval(Container.DataItem,"path") %>" target="_blank" ><i class="fa fa-eye" aria-hidden="true"></i> Read Now</a>
                                   
                               
                                    <a class="library-button-download" href="<%# DataBinder.Eval(Container.DataItem,"path") %>" download><i class="fa fa-download" aria-hidden="true"></i> Download</a>
                                    <br /><br />
                                </div>
                            </div>

                            <br /><br />


                         </ItemTemplate>

                  </asp:Repeater>
                   
              </div> 
      </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
