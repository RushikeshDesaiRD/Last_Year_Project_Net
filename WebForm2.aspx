<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            justify-content: center;
            align-items: center;
            padding: 0px;
            margin: 0px;
            display: flex;
            width: 100%;
            height: 100%;
        }

        .form-box {
            width: 380px;
            height: 540px;
            background: white;
            padding: 5px;
            margin: 6% auto;
            position: relative;
        
           overflow:hidden;
            border:1px solid #aaa8a8;
            border-radius:10px;
        }

        .btn-box {
            width: 220px;
            border-radius: 30px;
            margin: 35px auto;
            position: relative;
            box-shadow: 2px 2px 4px gray,-1px -1px 4px gray;
            display: flex;
        }

        .btnmy {
            padding: 10px 30px;
            outline: none;
            border: none;
            background: transparent;
            position: relative;
            cursor: pointer;
            font-weight: bold;
        }

        #btn {
            width: 110px;
            top: 0px;
            left: 0px;
            height: 100%;
            position: absolute;
            border-radius: 30px;
            background: #0d91e9;
        }

        .input-groupp {
            position: absolute;
            top: 70px;
            width: 280px;
            transition: all .8s ease-in-out;
        }

            .input-groupp h3 {
                text-align: center;
                color: #0099ff;
                font-size: 20px;
                font-weight: bold;
            }

        #login {
            left: 50px;
        }

        #signup {
            left: 450px;
        }


        .authountication i {
            background: #0099ff;
            box-shadow: 1px 1px 6px gray,-1px -1px 5px gray;
            padding: 10px 16px;
            color: white;
            font-weight: bold;
            font-size: 25px;
            border-radius: 360px;
        }

        .contact-form .form-field {
            position: relative;
            margin: 32px 0px;
        }

        .contact-form .input-text {
            width: 90%;
            height: 36px;
            display: block;
            border-width: 0px 0px 2px 0px;
            font-size: 18px;
            font-weight: 400;
            border-color: #0094ff;
            margin: auto;
            line-height: 26px;
        }

        .contact-form .input-text {
            outline: none;
        }

        .contact-form label {
            position: absolute;
            left: 20px;
            bottom: 0px;
            font-family: Tahoma;
            font-size: 18px;
            font-weight: 400;
            line-height: 26px;
            transition: transform .3s ease-in-out;
            padding:0px 0px 10px 0px;
            color:
        }

        .get-in-touch {
            width: 400px;
            margin: 10% auto;
            padding: 10px;
            box-shadow: 2px 2px 4px gray,-1px -1px 5px gray;
        }

        .contact-form .input-text:focus + label, .contact-form .input-text.not-empty + label {
            transform: translateY(-24px);
            color:#0099ff;
            font-size:14px;
             left: 15px;
        }
        .btn-mybtn{
            padding:10px 20px;
            color:white;
            font-size:17px;
            font-weight:400;
            background:#0099ff;
            border-radius:3px;
            box-shadow:2px 2px 6px gray,-1px -1px 8px gray;
            outline:none;
            border:none;
            float:right;
        }
        .hero{
            height:100%;
            width:100%;
          
        }
    </style>
    <script type="text/javascript">
        function showAlert(){
            alert("lll");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="hero">
            <div class="form-box">
                <div class="btn-box">
                    <div id="btn"></div>
                    <button type="button" class="btnmy" onclick="login()">Sign Up</button>
                    <button type="button" class="btnmy" onclick="signup()">Sign In</button>
                </div>



                <div class="input-groupp" id="login">
                    <h3>Sign Up</h3>
                    <center> 
                    <span class="authountication">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-facebook"></i></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i style="background:#ff3333" class="fa fa-google"></i></asp:LinkButton>
                    </span>
                </center>
                    <br />
                    <div class="contact-form">
                        <div class="row">
                          
                        <div class="form-field">
                            
                          
                                <asp:TextBox ID="name" CssClass="input-text js-input"  runat="server"></asp:TextBox>
                                 <label>Name</label>
                          
                                
                           


                        </div>
                              
                           
                        <div class="form-field">
                            <asp:TextBox ID="email" CssClass="input-text js-input"  runat="server"></asp:TextBox>
                            
                            <label>Email</label>
                        </div>
                        <div class="form-field">
                            <asp:TextBox ID="password" CssClass="input-text js-input"  runat="server"></asp:TextBox>
                            <label>Password</label>
                        </div>
                             <div class="form-field">
                                 <asp:CheckBox ID="CheckBox1" Font-Size="10px" Text="Remember Me" runat="server" />
                               </div>
                        <div class="form-field">
                            <asp:Button ID="Button1" OnClick="signup_Click" CssClass="btn-mybtn" runat="server" Text="Sign Up"  />
                        </div>

                    </div>
 </div>
                </div>
                    <script>
                        function msg() {
                           
                            swal({
                                title: "Good job!",
                                text: "Sign Up",
                                icon: "success",
                                button: "Great!",
                            });
                        }
                        function msg2() {
                            swal("Oops", "Something went wrong!", "error");
                        }
                       
                    </script>
                <div class="input-groupp" id="signup">
                     <h3>Sign In</h3>
                    <div class="contact-form row">
                        
                        <div class="form-field">
                            <asp:TextBox ID="TextBox2" CssClass="input-text js-input" runat="server"></asp:TextBox>
                            <label>Email</label>
                        </div>
                        <div class="form-field">
                            <asp:TextBox ID="TextBox3" CssClass="input-text js-input"  runat="server"></asp:TextBox>
                            <label>Password</label>
                        </div>
                         <div class="form-field">
                                 <asp:CheckBox ID="CheckBox2" Font-Size="10px" Text="Remember Me" runat="server" />
                               </div>
                        <div class="form-field">
                            <asp:Button ID="Button2" CssClass="btn-mybtn" OnClick="Login_Click" runat="server" Text="Sign In" />
                        </div>
                    </div>

                </div>
            
 </div>
         </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("signup");
            var z = document.getElementById("btn");
            function signup() {
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            function login() {
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0px";
            }
        </script>
                
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
