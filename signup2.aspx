<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup2.aspx.cs" Inherits="WebApplication1.signup2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body{
            margin:0px;
            padding:0px;
            width:100%;
            height:100%;
            position:relative;
        }
       
       .contact-form .form-field{
           position:relative;
           margin:32px 0px;
       }
       .contact-form .input-text{
           width:80%;
           height:36px;
           display:block;
           border-width:0px 0px 2px 0px;
           font-size:18px;
           font-weight:400;
           border-color:#0094ff;
           margin:auto;
           line-height:26px;
       }
        .contact-form .input-text {
            outline:none;
        }
        .contact-form label{
            position:absolute;
            left:40px;
            bottom:12px;
            font-family:Tahoma;
            font-size:18px;
            font-weight:400;
            line-height:26px;
            transition:transform .3s ease-in-out;
        }
       .get-in-touch{
           width:400px;
           margin:10% auto;
           padding:10px;
           box-shadow:2px 2px 4px gray,-1px -1px 5px gray; 
       }
        .contact-form .input-text:focus + label, .contact-form .input-text.not-empty + label {
            transform: translateY(-24px);
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="get-in-touch">
            <div class="contact-form row">
                <div class="form-field col x-50">
                    <asp:TextBox ID="name" CssClass="input-text js-input" required runat="server"></asp:TextBox>
                    <label>Name</label>
                </div>
                 <div class="form-field col x-100">
                    <asp:TextBox ID="email" CssClass="input-text js-input" required runat="server"></asp:TextBox>
                    <label>Email</label>
                </div>
                 <div class="form-field col x-100">
                    <asp:TextBox ID="password" CssClass="input-text js-input" required runat="server"></asp:TextBox>
                    <label>Password</label>
                </div>
                 <div class="form-field col x-100">
                     <asp:Button ID="Button1" runat="server" Text="Button" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
