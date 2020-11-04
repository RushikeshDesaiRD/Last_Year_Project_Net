<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentchat.aspx.cs" Inherits="WebApplication1.studentchat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" int egrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link href="All%20Data/bootstrap-grid.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-reboot.css" rel="stylesheet" />
    <link href="All%20Data/bootstrap-reboot.min.css" rel="stylesheet" />
    <script src="All%20Data/bootstrap.bundle.js"></script>
    <script src="All%20Data/bootstrap.bundle.min.js"></script>
    <link href="All%20Data/bootstrap.css" rel="stylesheet" />
    <script src="All%20Data/bootstrap.js"></script>
    <script src="All%20Data/bootstrap.min.js"></script>
    <script src="jquery.webcam.js"></script>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/jsfiles/jquery.webcam.js") %>' type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
         /*chat-box*/
        .chat-box{
            width:80%;
            padding:10px 0px 10px 30px;
            color:gray;
            font-size:25px;
            border-radius:50px;
            border:1px solid black;
            background:#ffffff;
           
        }
        .msgsend img{
            font-size:25px;
            color:#ffffff;
            background:green;
            padding:20px 20px;
            border-radius:360%;
            background:#00b33c;
            width:70px;
           
        }
        .alert-msg {
            padding:10px 10px 20px 10px;
            color:black;
            font-size:20px;
            background:white;
            margin:30px 0px 7px 0px;
            border-radius:0px 20px 15px 15px;
            width:auto;
        }
        .chat-box-container{
            position:fixed;
            z-index:2;
            
            width:100%;
            top:82%;
            padding:40px;
            background:url("img/chat.png");


        }
        .chat-backgroun-bg{
            background:url("img/chat.png");
            width:100%;
            height:1000vh;
            background-size:cover;
            background-attachment:fixed;
        }
        .msgsend2 img{
           background:yellow;
            padding:5px;
            border-radius:360%;
            width:40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav style="background:#009933;padding:20px 0px 20px 30px;color:white; position:fixed; width:100%">

    <h1 class="text-white"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa fa-arrow-left text-white"></i></asp:LinkButton> <span style="margin-left:200px">  Jaysingpur College Chat </span>
<span style="margin-left:800px"><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click"><i class="fa fa-trash text-white" aria-hidden="true"></i></asp:LinkButton></span>
    </h1>
</nav>

    <div class="chat-backgroun-bg">
        <br /><br /><br /><br />
     <asp:Repeater ID="Repeater1" runat="server"  >
                <HeaderTemplate>
                 </HeaderTemplate>
                <ItemTemplate>

                    <div class="container">
                        <div class="alert-msg">
                            <h3 class="text-warning"> <%# DataBinder.Eval(Container.DataItem, "name") %></h3>
                            <%# DataBinder.Eval(Container.DataItem, "msg") %>
                             <br />
                            <h5 class="float-right pr-1 pb-1"> <%# DataBinder.Eval(Container.DataItem, "time") %></h5>
                        </div>
                    </div>
       <div class="container"><img src="<%# DataBinder.Eval(Container.DataItem, "img") %>" style="width:100px;" /></div>              
                     <br />
                
               </ItemTemplate>

            </asp:Repeater>


  
    <div class=" chat-box-container">
              <asp:TextBox ID="TextBox1" runat="server" CssClass="chat-box" Text="Type A Message"></asp:TextBox>
            <asp:LinkButton ID="LinkButton1" CssClass="msgsend ml-2" runat="server" OnClick="LinkButton1_Click"><img src="img/msgsend.png"  class="img-fluid"/></asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" CssClass="msgsend2 ml-2" runat="server" OnClick="LinkButton3_Click" ><img src="img/smile.png" class="img-fluid" /></asp:LinkButton>
         <asp:LinkButton ID="LinkButton4" CssClass="msgsend2" runat="server" OnClick="LinkButton4_Click" ><img src="img/unhappy.png" class="img-fluid" /></asp:LinkButton>
         <asp:LinkButton ID="LinkButton5" CssClass="msgsend2" runat="server" OnClick="LinkButton5_Click" ><img src="img/crayying.png" class="img-fluid" /></asp:LinkButton>
         <asp:LinkButton ID="LinkButton6" CssClass="msgsend2" runat="server" OnClick="LinkButton6_Click"><img src="img/thum.png" class="img-fluid" /></asp:LinkButton>

        </div>
    </div>
    </div>
    <br /> <br /> <br /> <br /> <br /> <br /> <br />
        </div>
        </div>
    </form>
</body>
</html>
