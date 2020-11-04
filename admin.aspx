<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
     <div class="container">
         <div class="row">
             <div class="col-6">
                   <div class="card shadow-lg text-center p-5 text-warning">
            <h3>Attedence Of Student</h3>
            <asp:HyperLink ID="HyperLink6" CssClass="btn btn-danger " Font-Size="15px" runat="server" NavigateUrl="~/attendence.aspx">Student Attendence</asp:HyperLink>

        </div>
             </div>
             <div class="col-5">
                  <div class="card shadow-lg text-center p-5 text-warning">
            <h3>Admin Admission Pannel</h3>
            <asp:HyperLink ID="HyperLink3" CssClass="btn btn-primary " Font-Size="15px" runat="server" NavigateUrl="~/admin2.aspx">Apply Noifications</asp:HyperLink>

        </div>
             </div>
         </div>
          
         <br />
       
    </div> 
    <br /><br />
     <div class="container">
        <h1 class="text-primary text-center p-5">Admin Pannel</h1>
        <div class="row">
            <div class="col-6">
                <div class="card shadow-lg p-5">
                 <div class="row">
                     <div class="col-10">
                          <h1 class="text-center text-warning"><i class="fa fa-upload" aria-hidden="true"></i> Notes Or Other</h1>
                    <h1 class="text-center text-success">  <asp:Label ID="Label7" runat="server" Text="Add Now"></asp:Label></h1>
                    <div class="form-group">
                        <h2> <asp:Label ID="Label5" runat="server" Text="Uploader Name"></asp:Label></h2>
                         <asp:TextBox ID="from" ValidationGroup="First" CssClass="form-control" Font-Size="20px" placeholder="Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group text-black">
                        <h2> <asp:Label ID="Label1" runat="server" Text="Add Subject"></asp:Label></h2>
                        <asp:TextBox ID="Subject" ValidationGroup="First" Font-Size="20px"  CssClass="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                         <h2> <asp:Label ID="Label4" runat="server" Text="Add Description"></asp:Label></h2>
                         <asp:TextBox ID="Des" ValidationGroup="First" TextMode="MultiLine" Rows="3" Font-Size="20px"  CssClass="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="form-group ">
                         <h2> <asp:Label ID="Label2" runat="server" Text="Add File"></asp:Label></h2>
                         <asp:FileUpload ValidationGroup="First" Font-Size="20px"  ID="FileUpload1" runat="server" />
                     </div>
                    
                    <div class="form-group">
                        <asp:Button ID="Button1" ValidationGroup="First" CssClass="btn btn-primary shadow-lg" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" runat="server" Text="Add" OnClick="Button1_Click" />
                    </div>
                    <asp:HyperLink NavigateUrl="~/notes.aspx" ID="HyperLink1" runat="server">Check</asp:HyperLink>
                          <asp:HyperLink NavigateUrl="~/noticedel.aspx" ID="HyperLink5" runat="server">Delete Old</asp:HyperLink>
                     </div>
                     <div class="col-2">
                         <div class="form-group">
                             <br /> <br /> <br /><br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="First" ID="RequiredFieldValid" ControlToValidate="from" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="First" ID="RequiredFieldVa" ControlToValidate="Subject" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="First" ID="RequiredFieldtor2" ControlToValidate="Des" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br /><br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="First" ID="ReqldValidator3" ControlToValidate="FileUpload1" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                     </div>
                 </div>
                   
                </div>
            </div>


            <div class="col-6 ">
                <div class="card shadow-lg p-5">
                    <div class="row">
                    <div class="col-10">
                           <h1 class="text-center text-warning"><i class="fa fa-bell" aria-hidden="true"></i> Notice</h1>
                    <h1 class="text-center text-success">  <asp:Label ID="Label6" runat="server" Text="Add Now"></asp:Label></h1>

                    <div class="form-group">
                        <h2> <asp:Label ID="Label3" runat="server" Text="Teacher Name"></asp:Label></h2>
                         <asp:TextBox ID="Teacher" ValidationGroup="second" CssClass="form-control" Font-Size="20px" placeholder="Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group text-black">
                        <h2> <asp:Label ID="Label8" runat="server" Text="Add Subject"></asp:Label></h2>
                        <asp:TextBox ID="Noticesub" ValidationGroup="second" Font-Size="20px"  CssClass="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                    </div>
                    
                    <div class="form-group">
                         <h2> <asp:Label ID="Label9" runat="server" Text="Notice"></asp:Label></h2>
                         <asp:TextBox ID="noticedes" ValidationGroup="second" TextMode="MultiLine" Rows="3" Font-Size="20px"  CssClass="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="form-group ">
                         <h2> <asp:Label ID="Label10" runat="server" Text="Add File"></asp:Label></h2>
                         <asp:FileUpload Font-Size="20px" ValidationGroup="second"  ID="FileUpload2" runat="server" />
                     </div>
                    
                    <div class="form-group">
                        <asp:Button ID="Button2" ValidationGroup="second" CssClass="btn btn-primary shadow-lg" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" runat="server" Text="Add" OnClick="Button2_Click" />
                    </div>
                    <asp:HyperLink NavigateUrl="~/notice.aspx" ID="HyperLink2" runat="server">Check</asp:HyperLink>
                     <asp:HyperLink NavigateUrl="~/noticedel.aspx" ID="HyperLink4" runat="server">Delete Old</asp:HyperLink>
                    </div>
                 <div class="col-2">
                       <div class="form-group">
                             <br /> <br /> <br /><br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="second" ID="RequiredFieldValidator7" ControlToValidate="Teacher" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="second" ID="RequiredFieldValidator8" ControlToValidate="Noticesub" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="second" ID="RequiredFieldValidator9" ControlToValidate="noticedes" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                           <div class="form-group"> <br /> <br /><br /><br /><br />
                             <asp:RequiredFieldValidator ValidationGroup="second" ID="RequiredFieldValidator10" ControlToValidate="FileUpload2" runat="server" Font-Size="25px" ForeColor="red" ErrorMessage="*"></asp:RequiredFieldValidator>
                         </div>
                 </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <br /><br />
    <div class="container">
        <div class="card p-5 shadow-lg">
            <div class="row">
                <div class="col-11">
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
                    <br />

                    <div class="form-group">
                        <label>Question</label>
                       <asp:TextBox ID="Q" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Option 1</label>
                        <asp:TextBox ID="o1" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class="form-group">
                          <label>Option 2</label>
                        <asp:TextBox ID="o2" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class="form-group">
                          <label>Option 3</label>
                        <asp:TextBox ID="o3" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class="form-group">
                          <label>Option 4</label>
                        <asp:TextBox ID="o4" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class="form-group">
                          <label>Answer</label>
                        <asp:TextBox ID="ans" Font-Size="15px"  CLASS="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="Button5" Visible="true" OnClick="Add_Quiz" runat="server" CssClass="btn btn-primary shadow-lg" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" Text="sumit" />
                    </div>
                    <asp:Label ID="satus" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>



    
             
   

    <div class="container">
        <div class="row">
            <div class="col-6">
                <div class="p-5 shadow-lg">
                    <div class="row">
                        <div class="col-10">
                             <h1 class="text-center text-warning"><i class="fa fa-video-camera" aria-hidden="true"></i>  Video</h1>
                    <h1 class="text-center text-success">  <asp:Label ID="Label11" runat="server" Text="Add Now"></asp:Label></h1>
                    <div class="form-group">
                        <h2> <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label></h2>
                         <asp:TextBox ID="vname" ValidationGroup="third"  CssClass="form-control" Font-Size="20px" placeholder="Name" runat="server"></asp:TextBox>
                    </div>
                   
                    
                    <div class="form-group">
                         <h2> <asp:Label ID="Label14" runat="server" Text="Catageory"></asp:Label></h2>
                         <asp:DropDownList ValidationGroup="third"  CssClass="form-control" ID="Vcat" runat="server">
                    <asp:ListItem Value="All">All</asp:ListItem>
                     <asp:ListItem Value="Mathmatics">Mathmatics</asp:ListItem>
                    <asp:ListItem Value="Prgramming">Programming</asp:ListItem>
                     <asp:ListItem Value="Chemistry">Chemistry</asp:ListItem>
                     <asp:ListItem Value="physics">Physics</asp:ListItem>
                     <asp:ListItem Value="Biology">Biology</asp:ListItem>
                </asp:DropDownList>
                        
                    </div>
                    <div class="form-group ">
                         <h2> <asp:Label ID="Label15" runat="server" Text="Add File"></asp:Label></h2>
                         <asp:FileUpload ValidationGroup="third"  Font-Size="20px"  ID="video" runat="server" />
                     </div>
                    
                    <div class="form-group">
                        <asp:Button ID="Button3" ValidationGroup="third"  CssClass="btn btn-primary shadow-lg" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" runat="server" OnClick="Add_video" Text="Add"  />
                    </div>
                        </div>
                          <div class="col-2">
                  <div class="form-group">
                      <br /><br /><br /><br /><br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="third"  ControlToValidate="vname" ID="RequiredFieldValidator1" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                      <br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="third"  InitialValue="All" ID="RequiredFieldValidator2" ControlToValidate="Vcat" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                    <br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="third"  ID="RequiredFieldValidator3" ControlToValidate="video" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                </div>
        </div>
                    </div>
                </div>
            </div>
                <div class="col-6">
                <div class="p-5 shadow-lg">
                    <div class="row">
                        <div class="col-10">
                             <h1 class="text-center text-warning"><i class="fa fa-book" aria-hidden="true"></i> Book</h1>
                    <h1 class="text-center text-success">  <asp:Label ID="Label13" runat="server" Text="Add Now"></asp:Label></h1>
                    <div class="form-group">
                        <h2> <asp:Label ID="Label16" runat="server" Text="Name"></asp:Label></h2>
                         <asp:TextBox ID="bookname" ValidationGroup="four"  CssClass="form-control" Font-Size="20px" placeholder="Name" runat="server"></asp:TextBox>
                    </div>
                   
                    <div class="form-group ">
                         <h2> <asp:Label ID="Label17" runat="server" Text="Add File"></asp:Label></h2>
                         <asp:FileUpload Font-Size="20px" ValidationGroup="four" ID="imgbook" runat="server" />
                     </div>
                   
                    <div class="form-group ">
                         <h2> <asp:Label ID="Label18" runat="server" Text="Add File"></asp:Label></h2>
                         <asp:FileUpload Font-Size="20px" ValidationGroup="four"  ID="bookpdf" runat="server" />
                     </div>
                    
                    <div class="form-group">
                        <asp:Button ID="Button4" ValidationGroup="four" CssClass="btn btn-primary shadow-lg" OnClick="Add_Book" Style="border-radius:20px" Width="140px"  Font-Size="20px" ForeColor="white" runat="server" Text="Add"  />
                    </div>
                        </div>
                          <div class="col-2">
                  <div class="form-group">
                      <br /><br /><br /><br /><br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="four"  ControlToValidate="bookname" ID="RequiredFieldValidator4" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                      <br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="four"  ID="RequiredFieldValidator5" ControlToValidate="imgbook" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                 </div>
                 <div class="form-group">
                    <br /><br />
                      <asp:RequiredFieldValidator ValidationGroup="four" ID="RequiredFieldValidator6" ControlToValidate="bookpdf" runat="server" Font-Size="30px" ForeColor="#ff0000" ErrorMessage="*"></asp:RequiredFieldValidator>
                </div>
        </div>
                    </div>
                </div>
            </div>
    </div>
        </div>
    <br /><br /><br /><br />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
