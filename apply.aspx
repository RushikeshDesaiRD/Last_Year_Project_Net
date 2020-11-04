<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="WebApplication1.apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="apply-form-background">
        <br />
        <br />
        <br />
        <div class="apply-form-main-from">
            <h3 class="card-header-custom">Apply Now</h3>
           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#0099ff" fill-opacity="1" d="M0,224L24,229.3C48,235,96,245,144,250.7C192,256,240,256,288,218.7C336,181,384,107,432,112C480,117,528,203,576,208C624,213,672,139,720,144C768,149,816,235,864,240C912,245,960,171,1008,117.3C1056,64,1104,32,1152,58.7C1200,85,1248,171,1296,224C1344,277,1392,299,1416,309.3L1440,320L1440,0L1416,0C1392,0,1344,0,1296,0C1248,0,1200,0,1152,0C1104,0,1056,0,1008,0C960,0,912,0,864,0C816,0,768,0,720,0C672,0,624,0,576,0C528,0,480,0,432,0C384,0,336,0,288,0C240,0,192,0,144,0C96,0,48,0,24,0L0,0Z"></path></svg>
            <div class="row">
                <div class="col-5">
                    <div class="form-group">
                       <label>Name</label>
                        <asp:TextBox ID="name" runat="server" CssClass="form-apply-control" placeholder="Your Answer" ForeColor="#3399ff"></asp:TextBox>

                    </div>
                    <div class="form-group">
                       <label>Address</label>
                        <asp:TextBox ID="address" runat="server" CssClass="form-apply-control" placeholder="Address" ></asp:TextBox>

                    </div>
                    <div class="form-group">
                       <label>Contact</label>
                        <asp:TextBox ID="contact" runat="server" CssClass="form-apply-control" Text="Your Answer" ></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-5">
                                <label>Course</label>
                                <asp:DropDownList ID="course" Font-Size="15px"  CLASS="form-apply-control" runat="server">
                                    <asp:ListItem Selected="True">CHOOSE HERE</asp:ListItem>
                                    <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                                    <asp:ListItem>SCIENCE</asp:ListItem>
                                    <asp:ListItem>B.C.A.</asp:ListItem>
                                    <asp:ListItem>B.C.S.</asp:ListItem>
                                    <asp:ListItem>B.S.C.</asp:ListItem>
                                    <asp:ListItem>B.A.</asp:ListItem>
                                    <asp:ListItem>B.COM.</asp:ListItem>
                                    <asp:ListItem>M.S.C.</asp:ListItem>
                                    <asp:ListItem>M.COM.</asp:ListItem>
                                    <asp:ListItem>M.A.</asp:ListItem>
                                    <asp:ListItem>COMMERCE</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-1">
                                <div class="form-group">
                                    <br />
                                    <br />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  InitialValue="CHOOSE HERE" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="course"></asp:RequiredFieldValidator>
                                   
                                </div>
                            </div>
                            <div class="col-5">
                                <label>Year</label>
                                <asp:DropDownList CLASS="form-apply-control" Font-Size="15px"  ID="DropDownList3" runat="server">
                                    <asp:ListItem Selected="True">CHOOSE HERE</asp:ListItem>
                                    <asp:ListItem Value="11 ">11 TH</asp:ListItem>
                                    <asp:ListItem Value="12">12 TH</asp:ListItem>


                                    <asp:ListItem Value="1 ">1 YEAR </asp:ListItem>
                                    <asp:ListItem Value=" 2 "> 2 YEAR</asp:ListItem>
                                    <asp:ListItem Value="3 ">3 YEAR</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                             <div class="col-1">
                                <div class="form-group">
                                    <br />
                                    <br />
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" InitialValue="CHOOSE HERE" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>



                    </div>



                    <div class="form-group">
                        <div class="row">
                            <div class="col-5">
                                <label>Basic qualification</label>
                                
                                <asp:TextBox ID="qualification" runat="server" ForeColor="#3399ff" placeholder="Your Answer" CLASS="form-apply-control"></asp:TextBox>
                            </div>
                            <div class="col-2">
                                 <div class="form-group">
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="qualification"></asp:RequiredFieldValidator>
                    </div>
                            </div>
                            <div class="col-5">
                                <label>Enterance Exam (Optional)</label>
                               
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="Your Answer" ForeColor="#3399ff" CLASS="form-apply-control"></asp:TextBox>
                            </div>


                        </div>



                    </div>
                    <div class="form-group p-3">
                       <label>Photo</label>
                        <asp:FileUpload ID="FileUpload1" Font-Size="25px" runat="server" />

                        <asp:Label ID="Label3" runat="server" ForeColor="white" Font-Size="20px" Text="Or Not Have Photo Capture Now"></asp:Label>
                    </div>







                    <div class="form-group p-3">
                        <asp:Button ID="btnCapture" Text="Capture Image And Apply" Font-Size="20px" runat="server" OnClientClick="return Capture();" CssClass="btn btn-warning shadow-lg" Width="250px" ForeColor="White" /><br /><br />
                        <asp:Button ID="Button2" CssClass="btn btn-warning shadow-lg" Width="250px" ForeColor="White" Font-Size="20px" Font-Bold="true" runat="server" Text="Apply Now" OnClick="Button2_Click" />
                    </div>
                </div>

                <div class="col-2 border-right">
                    <div class="form-group">
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="address"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <br />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="contact" runat="server" Font-Bold="true" Font-Size="17px" ForeColor="red" ErrorMessage="10 Digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-5">

                    <div class="form-group">
                        <div id="Camera"></div>
                    </div>
                    <div class="form-group">
                        <asp:Image ID="imgCapture" runat="server" Style="visibility: hidden; width: 320px; height: 240px" />
                    </div>
                </div>
            </div>
        </div>
    </div>

     <br />
        <br />
        <br /> <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br />
     <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br /> <br />
        <br />
        <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
