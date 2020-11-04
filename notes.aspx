<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="notes.aspx.cs" Inherits="WebApplication1.notes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   




  
        <div class="container p-4">
             <div class="row">
            <div class="col-5">
                 <asp:Repeater ID="Repeater1" runat="server" >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>
    
        
                <div class="row">
                    <div class="col-12">
                     <div class="card border-bottom  shadow-lg">
                         <div class="row">
                   <div class="col-8">
                     
                           
                           <h1 class="card-header p-5 text-primary">Subject <%# DataBinder.Eval(Container.DataItem, "subject") %></h1> 
                           <div class="card-body p-5">
                               <h3 class=" text-primary">From- <%# DataBinder.Eval(Container.DataItem, "name") %></h3> 
                           <p style="font-size:25px">
                                
                              <u>Description:-</u>
                                <%# DataBinder.Eval(Container.DataItem, "des") %>
                            </p>
                                <h1>
                                <a  style="font-size:25px" class="btn btn-primary shadow-lg" href="<%# DataBinder.Eval(Container.DataItem, "file") %>" download >Download</a>
                           </h1>
                               </div>
                          
                </div>
                      <div class="col-4">
                        <img src="img/about-extra-2.svg" class="img-fluid" style="height:100%;width:100%"><asp:Image ID="Image1" runat="server" />"
                    </div>
                    
                
              </div>
                         </div>
                </div>     
                    
               </div>
        
     




              
               
                    
                    </ItemTemplate>
            </asp:Repeater>
            </div>
             <div class="col-5">
                  <asp:Repeater ID="Repeater2" runat="server" >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>





    <div class="card shadow-lg" style="background:black;">
        <div class="row">
            <div class="col-5">
                <img src="./<%# DataBinder.Eval(Container.DataItem, "file") %>"  class="img-fluid"/>
            </div>
            <div class="col-7 text-white">
                <h1 class="text-warning text-bold">Notice</h1>
                <h3>Subject <%# DataBinder.Eval(Container.DataItem, "subject") %></h3>
                <div class="card-body">
                             <h3 class=" text-primary">From- <%# DataBinder.Eval(Container.DataItem, "name") %></h3> 
                            <p style="font-size:25px">
                                
                              <u>Description:-</u>
                                <%# DataBinder.Eval(Container.DataItem, "des") %>
                            </p>
                                
                   </div>
            </div>
        </div>
    </div>
























     


              
               
                    
                    </ItemTemplate>
            </asp:Repeater>
            </div>
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
