<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="noticedel.aspx.cs" Inherits="WebApplication1.noticedel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="container p-4">
             <div class="row">
            <div class="col-5">
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Repeater ID="Repeater1" runat="server" >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>
    
        
                <div class="row">
                    <div class="col-12">
                     <div class="card border-bottom  shadow-lg">
                         <div class="row">
                   <div class="col-8">
                     
                           
                           <h6 class="card-header p-5 text-primary">Subject <%# DataBinder.Eval(Container.DataItem, "subject") %></h6> 
                           <div class="card-body p-5">
                               <h6 class=" text-primary">From- <%# DataBinder.Eval(Container.DataItem, "name") %></h6> 
                           <h6 style="font-size:25px">
                                
                              <u>Description:-</u>
                                <%# DataBinder.Eval(Container.DataItem, "des") %>
                            </h6>
                                <h6>
                                    <asp:Label ID="delfile" runat="server"> <%# DataBinder.Eval(Container.DataItem, "file") %>  </asp:Label>
                                     <a  style="font-size:25px" class="btn btn-primary shadow-lg" href="<%# DataBinder.Eval(Container.DataItem, "file") %>" download >Download</a>
                             
                           </h6>
                               </div>
                          
                </div>
                      <div class="col-4">
                          <asp:LinkButton ID="LinkButton1" OnClick="Del_click" runat="server">Delete</asp:LinkButton>
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
                <img src="<%# DataBinder.Eval(Container.DataItem, "file") %>"  class="img-fluid"/>
            </div>
            <div class="col-7 text-white">
                <h6 class="text-warning text-bold">Notice</h6>
                <h6>Subject <%# DataBinder.Eval(Container.DataItem, "subject") %></h6>
                <div class="card-body">
                             <h6 class=" text-primary">From- <%# DataBinder.Eval(Container.DataItem, "name") %></h6> 
                            <h6 style="font-size:25px">
                                
                              <u>Description:-</u>
                                <%# DataBinder.Eval(Container.DataItem, "des") %>
                            </h6>
                                
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
