<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="WebApplication1.Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <script src="jquery.counterup.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" int egrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="outdata/imagehover.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-grid.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-reboot.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-reboot.min.css" rel="stylesheet" />
    <script src="All%20Data/bootstrap.bundle.js"></script>
    <script src="All%20Data/bootstrap.bundle.min.js"></script>
    <link href="All%20Data/bootstrap.css" rel="stylesheet" />
    <script src="All%20Data/bootstrap.js"></script>
    <script src="All%20Data/bootstrap.min.js"></script>
    <style>
        .btn-quiz {
            padding: 10px 20px;
            color: white;
            font-weight: bold;
            background: #0094ff;
            font-size: 25px;
            border: none;
            box-shadow: 2px 2px 7px gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <div class="container">
            <div class="p-5 shadow-lg">
                <center>
                    <h2>Play Now</h2>
                    <h5>Jaysingpur College Quiz Test
                    </h5>
                    <h3>
                    <asp:Label ID="name" runat="server" Text=""></asp:Label>
                    </h3>
                      <h1>
                    <asp:Label ID="mark1" CssClass="badge-success" runat="server" Text=""></asp:Label>
                    </h1>
                </center>






                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                    <ContentTemplate>

                        <asp:Panel runat="server" ForeColor="black" >

                          
                                  <center><asp:Label ID="label2" runat="server" Font-Bold="true"></asp:Label>
        <asp:Timer ID="timer1" runat="server" Interval="1000" OnTick="tick_goes"></asp:Timer>

        </center>

                        </asp:Panel>

                    </ContentTemplate>

                </asp:UpdatePanel>






                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <br />

                        <b>
                            <h2>Q. <%# Eval("id") %>: <%# Eval("question") %></h2>
                        </b>

                        <asp:RadioButton Font-Size="17px" ID="RadOption1" GroupName="rdexam" Text='<%# Eval("option1") %>' runat="server"></asp:RadioButton><br />

                        <asp:RadioButton Font-Size="17px" ID="RadOption2" GroupName="rdexam" Text='<%# Eval("option2") %>' runat="server"></asp:RadioButton><br />

                        <asp:RadioButton Font-Size="17px" ID="RadOption3" GroupName="rdexam" Text='<%# Eval("option3") %>' runat="server"></asp:RadioButton><br />

                        <asp:RadioButton Font-Size="17px" ID="RadOption4" GroupName="rdexam" Text='<%# Eval("option4") %>' runat="server"></asp:RadioButton><br />
                        <br />
                        <asp:Label ForeColor="#0099ff" Font-Size="20px" ID="LabCorrectAns" Visible="false" runat="server" Text='<%# Eval("answer") %>'></asp:Label><br />



                        <br />



                        <asp:Label CssClass="alert-success" ID="LabUserSelectedOption" Font-Size="20px" runat="server" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="LabUserSelectedOption2" CssClass="alert-danger" Font-Size="20px" runat="server" Text=""></asp:Label>
                        <br />


                    </ItemTemplate>

                </asp:Repeater>

                <br />
                <br />
                <asp:Button ID="BtnSubmit" runat="server" CssClass="btn-quiz" Text="SUBMIT" OnClick="BtnSubmit_Click" />
            </div>

        </div>
    </form>
</body>
</html>
