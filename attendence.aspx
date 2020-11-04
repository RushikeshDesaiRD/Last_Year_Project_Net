<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="WebApplication1.attendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br /><br />








    <br /><br />
    <div class="container text-center shadow-lg p-5 rounded">
      
        <div class="row">
            <div class="col-2">
                <asp:DropDownList ID="DropDownList1" CssClass="form-apply-control2" runat="server">
                    <asp:ListItem>--------- Choose Course -------------</asp:ListItem>
                    <asp:ListItem>B.C.A.</asp:ListItem>
                    <asp:ListItem>B.C.S.</asp:ListItem>
                    <asp:ListItem>B.COM.</asp:ListItem>
                    <asp:ListItem>M.COM.</asp:ListItem>
                    <asp:ListItem>B.A.</asp:ListItem>
                    <asp:ListItem Value="M.A."></asp:ListItem>
                    <asp:ListItem>B.S.C.</asp:ListItem>
                </asp:DropDownList>
            </div>
            
             <div class="col-1">
                 <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" Font-Bold="true" ForeColor="#ff0000" Font-Size="25px" InitialValue="--------- Choose Course -------------"></asp:RequiredFieldValidator>
            </div>
            <div class="col-2">
                <asp:DropDownList ID="DropDownList2" CssClass="form-apply-control2" runat="server">
                      <asp:ListItem>--------- Choose Year -------------</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" Font-Bold="true" ForeColor="#ff0000" Font-Size="25px" InitialValue="--------- Choose Year -------------" ErrorMessage="*"></asp:RequiredFieldValidator>
            </div>
            <br />
           
        
           <div class="col-2">
                <asp:DropDownList ID="DropDownList3" CssClass="form-apply-control2" runat="server">
                    <asp:ListItem>--------- Choose Teacher Name -------------</asp:ListItem>
                    <asp:ListItem>R.Patil</asp:ListItem>
                    <asp:ListItem>S.Patil</asp:ListItem>
                    <asp:ListItem>S.Chougle</asp:ListItem>
                    <asp:ListItem>H.Charate</asp:ListItem>
                    <asp:ListItem>B.A.Patil</asp:ListItem>
                    
                </asp:DropDownList>
            </div>
            
             <div class="col-1">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3" Font-Bold="true" ForeColor="#ff0000" Font-Size="25px" InitialValue="--------- Choose Teacher Name -------------"></asp:RequiredFieldValidator>
            </div>
           <div class="col-3">

          <br />
                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary p-2" OnClick="Button1_Click" Text="Show Student" Width="128px" />
             </div>
           
        </div>
   
    <br />
    <center>
    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#0099FF" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="3" ForeColor="Black" Width="813px">
        <Columns>
            <asp:TemplateField HeaderText="Status Here">
                <ItemTemplate>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" Text="Present"  GroupName="g1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Checked="true" Text="Absent" GroupName="g1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" HorizontalAlign="Center" Font-Size="30px" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" Font-Size="20px" VerticalAlign="Middle" ForeColor="Black" HorizontalAlign="Center"/>
        <RowStyle BackColor="White" HorizontalAlign="Center" Font-Size="20px" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" HorizontalAlign="Center" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />

    </asp:GridView>
        </center>
    <br />



        
        
    <asp:Button ID="Button2" Enabled="false"  runat="server" CssClass="btn btn-primary" Text="Attendence Save" OnClick="Button2_Click" />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="alert-success" Font-Size="15px" Text=""></asp:Label>
    <br />




        <asp:GridView ID="GridView2" runat="server"></asp:GridView>












    <br />

    </div>
    <br />
    












</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       
</asp:Content>
