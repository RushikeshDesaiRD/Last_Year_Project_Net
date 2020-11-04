<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="WebApplication1.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <br /><br />
     <asp:Panel ID="billPanel" runat="server"> 
   
         <asp:Repeater ID="Repeater1" runat="server"  >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>
    <div style="width:80%; margin:auto" class="p-5 shadow-lg text-center">
          <table class="table" style="border:3px solid black; font-size:25px" bgcolor="White" border="2">
            
              <h2 class="text-primary" >Jaysingpur College Jaysingpur</h2>
              <p>Tal:Shirol Dist:-Kolhapur(Mahastar) Phone:-(02322)</p>
              <p>www.Jaysingpurcollege.edu.in</p>
              <br />
              <tr><th colspan="3" style="border-bottom:3px solid black" Font-color="blue">FEE RECEIPT</th></tr>
              <br />

              <tr><td colspan="2">Name:-<asp:Label ID="paymentname" runat="server" Text=""><%# DataBinder.Eval(Container.DataItem, "name")%></asp:Label> </td><td>Date:- <%# DataBinder.Eval(Container.DataItem, "fee")%></td></tr>
              <tr style="border-bottom:3px solid black"><td colspan="2">Class:<%# DataBinder.Eval(Container.DataItem, "course")%></td><td>Year<%# DataBinder.Eval(Container.DataItem, "year")%></td></tr>
              <br />
              <tbody class="table-striped table-bordered  table-bordered" style="font-size:20px">
              <tr>
                  <td>1</td><td>Lab Fee</td><td>1000</td>

              </tr>
              <tr>
                  <td>2</td><td>Tution Fee</td><td><%# DataBinder.Eval(Container.DataItem, "fee")%></td>

              </tr>
              <tr>
                  <td>3</td><td>E. Fee</td><td>50</td>

              </tr>
              <tr>
                  <td>4</td><td>Fincing Course </td><td>1000</td>

              </tr>
              <tr>
                  <td>5</td><td>GimKhana Fee</td><td>80</td>

              </tr>
              <tr>
                  <td>6</td><td>Insurence</td><td>50</td>

              </tr>
              <tr>
                  <td>7</td><td>Library Fee</td><td>35</td>

              </tr>
              <tr>
                  <td>8</td><td>Paper Charges</td><td>15</td>

              </tr>
              <tr>
                  <td>9</td><td>Card</td><td>35</td>

              </tr>
              <tr>
                  <td>10</td><td>Journal</td><td>300</td>

              </tr>
              <tr>
                  <td>11</td><td>Stationary</td><td>300</td>

              </tr>
              <tr style="border:3px solid black">
                  <td colspan="3">Total:- <asp:Label ID="Label1" runat="server" Text=""><%# DataBinder.Eval(Container.DataItem, "total")%></asp:Label></td>
              </tr>
              </tbody>
          </table>
    </div>

          </ItemTemplate>
            </asp:Repeater>
      
    </asp:Panel>
      <br /><br />

   
<br />
<center>
   
    <asp:Button ID="Button1"  runat="server" Font-Size="30px" CssClass="p-2 btn btn-primary shadow-lg" ForeColor="White"  Text="Download Bill" OnClick="Button1_Click" />
      <asp:Button ID="Button2"  runat="server" Font-Size="30px" CssClass="p-2 btn btn-primary shadow-lg" ForeColor="White"  Text="Payment Now" OnClick="Button2_Click"  />
</center>
     <asp:Label ID="total" Font-Size="40px" runat="server" Text=""></asp:Label>
    <br /><br>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
