<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
    <script src="jquery.webcam.js"></script>
    <script src="outdata/countUp.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/jsfiles/jquery.webcam.js") %>' type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src='<%=ResolveUrl("~/jsfiles/jquery.webcam.js") %>' type="text/javascript"></script>
    <script src="jsfiles/jquery.webcam.js"></script>

    <script type="text/javascript">


        $('#myModal').modal('show');

        setTimeout(function () {
            $('#myModal').modal('hide');
        }, 5000);
    </script>
    <script type="text/javascript">
        var pageUrl = '<%=ResolveUrl("~/apply.aspx") %>';
        $(function () {
            jQuery("#Camera").webcam({
                width: 320,
                height: 240,
                mode: "save",
                swffile: '<%=ResolveUrl("~/jsfiles/jscam.swf") %>',
                debug: function (type, status) {
                    //$('#Status').append(type + ": " + status + '<br /><br />');
                },
                onSave: function (data) {
                    $.ajax({
                        type: "POST",
                        url: pageUrl + "/GetCapturedImage",
                        data: '',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            $("[id*=imgCapture]").css("visibility", "visible");
                            $("[id*=imgCapture]").attr("src", r.d);
                            alert("Live Image Captured Successfully");
                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                },
                onCapture: function () {
                    alert("ddddddd");
                    webcam.save(pageUrl);
                }
            });
        });
        function Capture() {
            webcam.capture();
            return false;
        }
    </script>










    <script type="text/javascript">
        $(document).mousemove(function (e) {
            $('.pointer').css({
                left: e.pageX,
                top: e.pageY
            });
        })
    </script>
    <!---slideMenubar------------------------------->
    <script>
        $(document).ready(function () {
            $("#MenuIcon").click(function () {
                $("#MainMenu").css("left", "0px");

                function showMenu() {
                    $("#MainMenu").css("-webkit-clip-path", "polygon(0 0, 100% 0, 100% 100%, 0% 100%)");
                    $("#MenuIcon").animate({
                        right: "-100"
                    }, 300);
                }
                setTimeout(showMenu, 100);
            });
            $("#close").click(function () {
                $("#MainMenu").css("-webkit-clip-path", "polygon(0 0, 0% 0, 100% 100%, 0% 100%)");

                function hidemenu() {

                    $("#MainMenu").css("left", "-100%");
                    $("#MenuIcon").animate({
                        right: "50"
                    }, 300);
                }
                setTimeout(hidemenu, 300);

            });
        });
    </script>


    <script>
        $(document).ready(function () {
            $(".button").click(function () {
                var name = $(this).attr("data-filter")
                if (name == "all") {
                    $(".filter").show("2000");
                } else {
                    $(".filter").not("." + name).hide("2000");
                    $(".filter").filter("." + name).show("2000");
                }
            });
        });
    </script>








    <style>
        .video-filter-input {
            padding: 20px;
            color: white;
            background: #0066ff;
            font-size: 25px;
            font-weight: bold;
        }

        .video-filter-btn {
            padding: 20px;
            color: white;
            background: #ff9900;
            font-size: 25px;
            font-weight: bold;
        }
        /**---------------------------------------------------------------------*/
        .library-fix-background {
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0, 153, 204,.3), rgba(0, 153, 204,.3)),url("https://cdn.pixabay.com/photo/2015/05/15/14/21/books-768426_960_720.jpg");
            background-size: cover;
            background-attachment: fixed;
        }

        .libray-read-button {
            text-align: center;
            background: #1ac6ff;
            font-size: 20px;
            color: white;
            padding: 10px 30px 10px 30px;
            font-weight: bolder;
        }

        .library-button-download {
            padding: 10px 30px 10px 30px;
            background: #ff9900;
            font-size: 20px;
            color: white;
            text-align: center;
            font-weight: bolder;
        }

        .card-book {
            width: 60%;
            margin: auto;
            display: flex;
            background: white;
            padding: 10px;
        }

        /*----------------------chat-box---------------------------*/
        .chat-box {
            width: 80%;
            padding: 10px 0px 10px 30px;
            color: gray;
            font-size: 25px;
            border-radius: 50px;
            border: 1px solid black;
        }

        .msgsend {
            font-size: 25px;
            color: white;
            background: green;
            padding: 10px 20px;
            border-radius: 360%;
        }

        .alert-msg {
            padding: 10px 10px 20px 10px;
            color: black;
            font-size: 20px;
            background: white;
            margin: 30px 0px 7px 0px;
            border-radius: 0px 20px 15px 15px;
            width: auto;
        }

        .chat-box-container {
            position: fixed;
            z-index: 2;
            top: 90%;
        }

        .apply-course-btn {
            background: white;
            text-decoration: none;
            color: black;
            padding: 10px 15px;
            font-size: 20px;
            font-weight: bolder;
            border-radius: 15px;
        }
        /**-----------------------------------------------------------*/

        .page-courses .card {
            background: black;
            border-radius: 20px;
            height: 500px;
            box-shadow: 6px 6px 7px black,-3px -3px 6px black;
        }

            .page-courses .card img {
                width: 100%;
                border-radius: 20px 0px 0px 20px;
                height: 500px;
            }

            .page-courses .card h1 {
                color: white;
                font-weight: bolder;
                font-size: 40px;
            }

            .page-courses .card p {
                color: white;
                font-weight: bold;
                font-size: 15px;
            }

            .page-courses .card h2 {
                display: flex;
                margin-top: 40px;
                font-size: 20px;
            }

        .apply-course-btn-arrow {
            font-size: 30px;
            padding: 10px 15px;
            color: black;
            border-radius: 15px;
            background: white;
        }
        /*-----------------------------------*-*/
        .fex-box-all-feature {
            width: 100%;
            height: 55vh;
            background: white;
        }

        .my-flex {
            width: 80%;
            margin: auto;
        }

            .my-flex p {
                color: white;
                font-size: 30px;
                font-weight: bolder;
            }

            .my-flex h1 {
                color: white;
                font-size: 70px;
            }

            .my-flex figure {
                width: 33.33%;
                padding: 60px 0px;
                text-align: center;
            }

            .my-flex div:hover {
                z-index: 2;
                box-shadow: 7px 7px 19px black,-3px -3px 19px black;
            }
        /*-----------------------------apply form-------------------------**/
        .apply-form-background {
            width: 100%;
            height: 120vh;
            background: url("img/2797783.jpg");
            background-size: cover;
        }

        .apply-form-main-from {
            width: 90%;
            padding: 10px;
            margin: auto;
            background: rgb(51, 153, 255);
        }
        /**-------------------------------slidemenubar------------------------------------*/



        #MenuIcon {
            height: 25px;
            width: 50px;
            position: fixed;
            top: 50px;
            right: 50px;
        }

            #MenuIcon:hover {
                cursor: pointer;
            }

                #MenuIcon:hover #MenuLine {
                    width: 40px;
                }

                    #MenuIcon:hover #MenuLine::before {
                        width: 50px;
                    }

                    #MenuIcon:hover #MenuLine::after {
                        width: 50px;
                    }

        #MenuLine {
            height: 4px;
            width: 50px;
            background: red;
            position: absolute;
            top: 50%;
            left: 50%;
            transition: all .2s ease-in-out;
            transform: translate(-50%, -50%);
        }

            #MenuLine::before {
                background: red;
                position: absolute;
                height: 4px;
                width: 40px;
                content: '';
                margin-top: 10px;
            }

            #MenuLine::after {
                background: red;
                position: absolute;
                height: 4px;
                width: 40px;
                content: '';
                margin-top: -10px;
            }

        #logo-menu-slidebar {
            color: #0099ff;
        }

        #MainMenu {
            height: 100vh;
            width: 100%;
            position: fixed;
            background: black;
            top: 0px;
            left: -100%;
            -webkit-clip-path: polygon(0 0, 100% 0, 0% 100%, 0% 100%);
            transition: all 0.4s;
            text-align: center;
        }

            #MainMenu ul {
                text-align: center;
                color: white;
                list-style: none;
                font-family: Arial, Helvetica, sans-serif;
                position: absolute;
                transform: translate(-50%, -50%);
                top: 30%;
                left: 49%;
            }

                #MainMenu ul li a {
                    text-decoration: none;
                    color: white;
                    font-size: 20px;
                    padding: 10px 100px 10px 100px;
                }



        #close {
            position: absolute;
            transform: translate(-50%);
            bottom: 100px;
            left: 51%;
        }

            #close a {
                font-size: 40px;
                text-decoration: none;
                color: #ff9900;
                background: none;
                font-weight: bolder;
            }



















        /*---------------------------------end---------------------------------------------------*/

        .container2 {
            position: relative;
            width: 24px;
            height: 24px;
            margin: auto;
        }

        .chevron {
            position: absolute;
            width: 70px;
            height: 10px;
            opacity: 0;
            transform: scale3d(0.5, 0.5, 0.5);
            animation: move 3s ease-out infinite;
        }

        .form-padding-signup {
            padding: 20px;
            border: 3px solid #ff3300;
        }

        .chevron:first-child {
            animation: move 3s ease-out 1s infinite;
        }

        .chevron:nth-child(2) {
            animation: move 3s ease-out 2s infinite;
        }

        .chevron:before,
        .chevron:after {
            content: ' ';
            border: 3px solid #ff6600;
            position: absolute;
            top: 0;
            height: 100%;
            width: 60%;
            background: #ff6600;
        }

        .chevron:before {
            left: 0;
            transform: skew(0deg, 30deg);
        }

        .chevron:after {
            right: 0;
            width: 50%;
            transform: skew(0deg, -30deg);
        }

        @keyframes move {
            25% {
                opacity: 1;
            }

            33% {
                opacity: 1;
                transform: translateY(30px);
            }

            67% {
                opacity: 1;
                transform: translateY(40px);
            }

            100% {
                opacity: 0;
                transform: translateY(55px) scale3d(0.5, 0.5, 0.5);
            }
        }

        .text {
            display: block;
            margin-top: 75px;
            margin-left: -30px;
            font-family: "Helvetica Neue", "Helvetica", Arial, sans-serif;
            font-size: 12px;
            color: #fff;
            text-transform: uppercase;
            white-space: nowrap;
            opacity: .25;
            animation: pulse 2s linear alternate infinite;
        }

        @keyframes pulse {
            to {
                opacity: 1;
            }
        }

        .pointer {
            z-index: 22;
            background: rgba(255, 0, 0, 0.4);
            position: absolute;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            border: 5px solid #ff6600;
            pointer-events: none;
            transition: 0.2s;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0px;
            padding: 0px;
        }

        #video_layout {
            width: 100%;
            min-height: 100%;
            position: absolute;
            right: 0px;
            bottom: 0px;
            z-index: -1;
        }

        .video-overly-index {
            width: 100%;
            min-height: 100%;
            position: absolute;
            right: 0px;
            bottom: 0px;
            background: rgba(0, 0, 0, .5);
            z-index: -1;
        }

        .logo {
            margin-top: -20px;
            font-size: 30px;
            color: #ff9900;
            font-family: Impact, Charcoal, sans-serif;
        }

        nav {
            background: black;
            padding: 20px 0px 0px 40px;
        }

            nav a {
                position: relative;
                font-size: 18px;
                padding: 15px 14px;
                color: white;
                font-weight: bold;
                font-family: Impact, Charcoal, sans-serif;
                letter-spacing: 2px;
            }

                nav a:hover {
                    color: #ff9900;
                    border-radius: 40px;
                    transition: all .4s ease-in-out;
                    text-decoration: none;
                }

                nav a::before {
                    position: absolute;
                    bottom: 0px;
                    bottom: 0px;
                    left: 10%;
                    background: white;
                    content: '';
                    height: 3px;
                    width: 80%;
                }

                nav a:hover::before {
                    transition: all .4s ease-in-out;
                    background: #ff9900;
                }

        .btn-lg {
            margin-top: -20px;
        }

        .Social-icons i {
            margin-top: -10px;
            color: #ff9900;
            font-size: 20px;
            padding: 10px;
            border-radius: 10px;
            border: 2px solid white;
        }

        .dropbtn {
            color: white;
            padding: 10px 10px;
            border: 2px solid #0066ff;
            cursor: pointer;
            background: black;
            margin-top: -5px;
            border-radius: 10px;
            background: #0066ff;
            font-size: 15px;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .btn-lg-apply {
            color: white;
            font-size: 20px;
            font-weight: bold;
            padding: 10px 25px;
            background: #ff9900;
            box-shadow: 5px 4px 9px black;
        }


        .courses-margin {
            width: 100%;
            height: 100%;
            padding: 100px 0px 100px 0px;
        }

        .header h1 {
            color: white;
            font-size: 60px;
            font-weight: bolder;
            letter-spacing: -3px;
        }



        .btn-index {
            font-size: 20px;
            color: white;
            font-weight: bold;
            border-radius: 10px;
            border: 2px solid white;
            padding: 10px 25px;
        }

        .my_row {
            margin-top: 0%;
            width: 90%;
            margin-left: 5%;
            padding: 100px 0px 150px 0px;
        }

        .item img {
            width: 100%;
            height: 100%;
        }

        .item h3 {
            color: white;
            font-size: 30px;
            text-shadow: 2px 2px 3px black;
        }

        .item p {
            color: white;
            font-size: 15px;
            text-shadow: 2px 2px 3px black;
        }

        .my_row h1 {
            font-size: 40px;
            position: relative;
            padding: 30px;
            color: #0066ff;
        }

        .my_row2 {
            width: 100%;
            box-shadow: 9px 9px 19px black,-9px -9px 19px black;
        }

            .my_row2 .my_form {
                border: 4px solid red;
            }

        .my_frm {
            border: none;
            background: transperant;
            padding: 5px 20px;
            border-bottom: 2px solid #0099ff;
            font-weight: bold;
            width: 100%;
            font-size: 15px;
        }

        .col-5 .col_back {
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.52), rgba(0, 0, 0, 0.73)),url("img/banner.jfif");
            background-position: center;
            width: 100%;
            height: 100%;
        }

        .my_col_t {
            border-radius: 20px;
            color: white;
            text-align: center;
            font-size: 40px;
            width: 100%;
            height: 100%;
            text-shadow: 1px 1px 2px black;
            padding: 40px 0px 40px 0px;
            background-image: linear-gradient(to bottom, #25c8f6, #61ccfb, #85d0fe, #a2d5ff, #b9daff, #c8deff, #d5e3ff, #e1e8ff, #eaedff, #f2f3ff, #f9f9ff, #ffffff);
        }

        .margin_top {
            margin-top: 12%;
            background: white;
            width: 100%;
            height: 70vh;
        }

        .margin_top-png {
            width: 100%;
            background: black;
            height: 34vh;
            background: url("img/imageedit_5_9154410307.png");
            background-size: cover;
        }

        .margin_top .card {
            background: #00141a;
            box-shadow: 13px 13px 9px black;
        }


        .margin_top .item h2 {
            font-size: 30px;
            color: #0099ff;
            padding: 20px;
        }

        .social_testomonals i {
            font-weight: 500;
            padding: 10px;
            color: white;
            font-size: 40px;
            border-radius: 20px;
            border: 2px solid #0099ff;
        }

            .social_testomonals i:hover {
                color: #0066f
            }

        .margin_top .item p {
            color: white;
            text-shadow: none;
            font-size: 20px;
            padding: 20px;
        }

        .margin_top .item img {
            height: 300px;
            width: 300px;
        }



        .feedback-section {
            width: 97%;
            position: relative;
            margin: auto;
            height: 100vh;
            display: flex;
            padding: 50px 0px 50px 0px;
        }

            .feedback-section .mycol-6 {
                width: 50%;
                height: 100%;
            }

                .feedback-section .mycol-6 .img-box {
                    width: 100%;
                    height: 100%;
                    background: url("img/young-girl-sitting-working_68196-263.jpg");
                    background-position: center;
                    background-size: cover;
                }

        .my-form-feedback {
            padding: 15px 30px;
            font-size: 20px;
            color: white;
            outline: none;
            border: none;
            border-bottom: 3px solid #ff9900;
            background: rgba(0, 102, 255,.6);
        }

        .my-btn-feedback {
            color: white;
            padding: 10px 40px;
            font-size: 20px;
            border-radius: 5px;
            font-weight: bold;
        }

            .my-btn-feedback:hover {
                background: #ff9900;
            }

        .row-gallery {
            background: rgb(0, 0, 0);
            width: 100%;
            padding: 20px 0px 90px 0px;
        }

            .row-gallery h1 {
                font-size: 50px;
            }

        footer {
            background: rgb(0, 0, 0);
        }

        foote .container a {
            font-size: 40px;
        }

        main {
            border-radius: 0px 150px 150px 0px;
            width: 80%;
            background: white;
            display: flex;
            position: relative;
            margin: 70px auto;
            height: 500px;
        }

            main div {
                width: 50%;
                height: 100%;
            }

        .row-gallery main .main-box-img {
            background: url("img/369729-PB8VLN-956.jpg");
            width: 100vh;
            height: 100%;
            border-radius: 0px 150px 150px 0px;
            background-size: cover;
        }

        .form-apply-css {
            color: gray;
            font-size: 20px;
            padding: 5px 20px;
            border-radius: 10px
        }

        .btn-apply-css {
            font-size: 20px;
            color: white;
            font-weight: bold;
            border: 2px solid white;
            border-radius: 10px;
            padding: 10px 30px;
        }
        /**------------------------------------apply----------------------------------------*/
        .container-apply-bg {
            height: 100vh;
            width: 100%;
        }

        .row-apply-form {
            width: 90%;
            height: 100%;
            box-shadow: 2px 2px 5px black,-2px -2px 4px gray;
            margin: 30px auto;
        }

        .form-apply-control {
            width: 100%;
            font-size: 25px;
            border: none;
            background: white;
            padding: 5px 0px 5px 20px;
        }
        /*-------------------------admin sign up--------------------------*/
        .form-control-admin-signup {
            padding: 10px 10px;
            border-bottom: 2px solid #ff9900;
        }


        /*-----------------feature-------------------------*/
        .feature-index {
            background: rgb(33,33,41);
            background: black;
            height: 100vh;
            width: 100%;
        }

            .feature-index .card {
                margin-top: 10%;
                height: 500px;
                border-radius: 30px;
                box-shadow: 5px 5px 15px black;
                transition: 0.5 all ease-in-out;
            }

                .feature-index .card:hover {
                    transform: scale(1.2);
                    box-shadow: 5px 5px 15px black;
                }

            .feature-index .card-background-index {
                width: 100%;
                height: 60%;
                border-radius: 30px 30px 0px 0px;
                background: url("img/the-occasion-of-christmas-4666860_640.jpg");
                background-position: center;
                background-size: cover;
            }

            .feature-index h1 {
                color: #0099ff;
            }

            .feature-index p {
                color: gray;
            }

            .feature-index .card-background-index2 {
                width: 100%;
                height: 60%;
                border-radius: 30px 30px 0px 0px;
                background: url("img/tree-779827_640.jpg");
                background-position: center;
                background-size: cover;
            }

            .feature-index .card-background-index3 {
                width: 100%;
                height: 60%;
                border-radius: 30px 30px 0px 0px;
                background: url("img/dance-4271941_640.jpg");
                background-position: center;
                background-size: cover;
            }

        .card-stats {
            display: grid;
            grid-area: stats;
            grid-template-rows: 1fr;
            grid-template-columns: 1fr 1fr 1fr;
            border-bottom-left-radius: 15px;
            border-bottom-right-radius: 15px;
            background: rgb(255, 153, 0);
        }

            .card-stats .stat {
                display: flex;
                justify-content: center;
                justify-items: center;
                align-items: center;
                flex-direction: column;
                padding: 20px;
                color: white;
            }

            .card-stats .type {
                font-size: 11px;
                font-weight: 300;
                text-transform: uppercase;
            }

            .card-stats .value {
                font-size: 15px;
                font-weight: 500;
                text-transform: uppercase;
            }

        .stat-border {
            border-right: 1px solid gray;
            border-left: 1px solid gray;
        }

        .grid-container2 {
            display: grid;
            grid-template-columns: auto;
            background-color: #0099ff;
            height: 100%;
        }

            .grid-container2 > div {
                background-color: #0099ff;
                border: 4px solid black;
                text-align: center;
                font-size: 30px;
                text-align: center;
            }



        /*-----------Edit-------------------*/
        .form-control-edit {
            font-size: 25px;
            border: 2px solid #0099ff;
        }

        /*-------------------gallery-----------------------------**/
        .gallery-index {
            font-family: Arial, Helvetica, sans-serif;
            padding: 10px;
            margin: 0px;
            background: white;
            height: 100vh;
            margin-top: 50px;
            position: relative;
            width: 100%;
            margin: auto;
            color: white;
        }

        .navaigation {
            padding: 25px 0px;
        }

            .navaigation a {
                padding: 15px 20px;
                margin-right: 5px;
                text-decoration: none;
                border-radius: 10px;
                color: yellow;
                font-size: 25px;
                background: #0066ff;
            }

                .navaigation a.active {
                    background: #ff9900;
                }

        .ImageContainer div {
            display: inline-block;
            margin-top: 30px;
        }

            .ImageContainer div img {
                width: 200px;
                height: 250px;
                margin: 5px;
                padding: 5px;
                box-shadow: 2px 2px 9px black;
            }

        /*------------contactus-Msg------------------------*/
        .contactus-Msg {
            background: black;
            width: 100%;
            height: 100vh;
            position: relative;
        }

            .contactus-Msg::after {
                content: '';
                background: url("img/wave.png");
                background-position: center;
                background-repeat: no-repeat;
                bottom: 0px;
                left: 0px;
                width: 100%;
                height: 35vh;
                z-index: 10;
                position: absolute;
            }

        .contactus-Msg-form {
            border-radius: none;
            width: 100%;
            padding: 10px 0px 10px 20px;
        }

        /*-------------------------------------modal-digital-library-----------------------*/
        .modal-digital-library {
            background: url("img/imageedit_3_8986667032.jpg");
            width: 100%;
            height: 70vh;
            background-size: cover;
            background-position: center;
        }

            .modal-digital-library h3 {
                color: white;
                margin-top: 150px;
                font-weight: bolder;
                font-size: 30px;
            }

        .library-button {
            padding: 10px 20px;
            background: #333399;
            border-radius: 10px;
            color: white;
            font-size: 25px;
        }

















        .box {
            width: 200px;
            margin: auto;
        }

        .loader-42 {
            margin: 300px auto;
            width: 14em;
            height: 1em;
            border: .05em #0099ff solid;
            border-radius: .1em;
            background: linear-gradient(-60deg, transparent 0%, transparent 50%, #0099ff 50%, #0099ff 75%, transparent 75%, transparent);
            background-size: 1em 2em;
            background-position: 0 0;
            animation: loader-42 0.8s infinite linear;
        }

        @keyframes loader-42 {
            from {
                background-position: 0 0;
            }

            to {
                background-position: -2em 0;
            }
        }

        //////////////////////


        //////////////////////
        .box:nth-of-type(n + 43) {
            display: none;
        }

        .wrppper-loader {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0px;
            bottom: 0px;
            right: 0px;
            left: 0px;
            z-index: 999;
            background: white;
            overflow-x: hidden;
            overflow-y: hidden;
        }

            .wrppper-loader::-webkit-scrollbar {
                display: none;
            }
.counter-wrapper{
    background:black;
    height:62vh;
    padding:100px 50px;
    color:white;
    font-weight:bold;
    width:100%;
    
}
.counter-wrapper h1{
    color:#00ccff;
}
.counter-wrapper h2{
    color:#ff9900;
}
.counter-wrapper h4{
    font-size:30px;
    position:relative;
    padding:0px 0px 25px 0px; 

}
.counter-wrapper h4::after{
   position:absolute;
   width:40%;
   height:5px;
   bottom:0px;
   background:white;
   left:30%;
   content:'';
  

}




.feedback-form{
    width:100%;
    height:70vh;
    background:black;
}
.feedback-form-inner{
    width:80%;
    
    background:white;
    margin:auto;
}
.feedback-form-inner label{
    padding:5px 0px 0px 10px;
}
.feedback-form-inner h3{
    font-weight:bold;
    color:white;
    font-size:60px;
}
.feedback-form-inner h4{
    font-weight:bold;
    color:black;
}
.feedback-form-textbox{
    width:100%;
    padding:10px;
    border:none;
    border-bottom:2px solid #0099ff;
}
.feedback-form-btn{
    box-shadow:2px 2px 7px gray,-1px -1px 7px gray;
    color:white;
    font-weight:bolder;
    padding:10px 20px;
    background:#0099ff;
    outline:none;
    border:none;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">



        <div class="wrppper-loader">
            <div class="box">
                .loader-42
  <div class="loader-42"></div>
            </div>
        </div>



        <script>
            $(window).on("load", function () {
                setTimeout(closeloader, 000);

            })
            function closeloader() {

                $(".wrppper-loader").fadeOut("slow");
            }
        </script>

       

        <div class="counter-wrapper text-center" data-aos="zoom-in" data-aos-duration="1500" data-aos-easing="ease-in-sine">
            <div class="container">

            
            <h1 class="text-center">Students</h1>
            <div class="row">
                <div class="col-3">
                    <h1><i class="fa fa-flask" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,234,567.00</span></h4>
                    <h2>Science</h2>

                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-graduation-cap" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,234,567.00</span></h4>
                     <h2>Commerce</h2>
                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-paint-brush" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,234,567.00</span></h4>
                     <h2>Arts</h2>
                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-desktop" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,234,567.00</span></h4>

                     <h2>Computer Science</h2>
                </div>
                
            </div>

          </div>
            <input id="Button1" type="button" value="button" />
      
        </div>
      

       
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,96L20,90.7C40,85,80,75,120,74.7C160,75,200,85,240,117.3C280,149,320,203,360,208C400,213,440,171,480,149.3C520,128,560,128,600,154.7C640,181,680,235,720,261.3C760,288,800,288,840,288C880,288,920,288,960,272C1000,256,1040,224,1080,186.7C1120,149,1160,107,1200,117.3C1240,128,1280,192,1320,202.7C1360,213,1400,171,1420,149.3L1440,128L1440,0L1420,0C1400,0,1360,0,1320,0C1280,0,1240,0,1200,0C1160,0,1120,0,1080,0C1040,0,1000,0,960,0C920,0,880,0,840,0C800,0,760,0,720,0C680,0,640,0,600,0C560,0,520,0,480,0C440,0,400,0,360,0C320,0,280,0,240,0C200,0,160,0,120,0C80,0,40,0,20,0L0,0Z"></path></svg>
      
        <script src="outdata/countUp.min.js"></script>
        <script src="outdata/countUp.js"></script>
        <script src="outdata/countUp.withPolyfill.min.js"></script>
        <script src="outdata/jquery.counterup.js"></script>
        <script src="outdata/jquery.counterup.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <script src="jquery.counterup.min.js"></script>
        <script>

            jQuery(document).ready(function ($) {
                alert("hhhhh");
                $('.counter').counterUp({
                    delay: 10,
                    time: 1000
                });
            });
        </script>

        <script>

            jQuery('#Button1').click(function () {
                alert("hhhhh");
                $('.counter').counterUp({
                    delay: 10,
                    time: 1000
                });
            });
        </script>

       
  
        



        <!---------------------------------flex box------------------------------------------->


        <div class="fex-box-all-feature" >
            <div class="container">

          
                <div class="d-flex my-flex" style="box-shadow: 4px 12px 9px gray,-0px -4px 9px gray;" data-aos="fade-up" data-aos-duration="2000" data-aos-easing="ease-in-quad">

                    <figure data-aos="fade-up" class="imghvr-fold-up" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-youtube" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Cicks Here For Go Youtube</h3>
                            ouTube is an American video-sharing platform headquartered in San Bruno, California. Three former PayPal employees—Chad Hurley, Steve Chen, and Jawed Karim—created.
                        </figcaption>
                        <a href="#">Youtube</a>
                    </figure>
                    <figure data-aos="fade-up" class="imghvr-blur" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-pencil" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>You Can Get Notce Here</h3>
                            You have handwritten notes to take, business memo to share, essay to write, have a story to tell, article to edit, lecture to record, whether it's today's journal entry.
                        </figcaption>
                        <a href="#">Notice</a>
                    </figure>
                    <figure data-aos="fade-up" class="imghvr-fade" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-envelope-open" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>You Can Get Notice Here</h3>
                            A notice is a written or printed announcement (Example - a notice for sale). It is written in order to inform a large number of people about something that has happened.
                        </figcaption>
                        <a href="#">Notice</a>
                    </figure>


                </div>
                <div class="d-flex my-flex bg-dark" style="box-shadow: 4px 12px 9px gray,-0px -4px 9px gray;">

                    <figure data-aos="fade-up" class="imghvr-zoom-out-flip-vert" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-book" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Online Library</h3>
                            Open Library is an open, editable library catalog, building towards a web page for every book ever published.
                        </figcaption>
                        <a href="#">Online Library</a>
                    </figure>

                    <figure data-aos="fade-up" class="imghvr-slide-up" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-video-camera" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h2>Video Tutorials For Student</h2>
                            instructional videos can be equally good. A tutorial video on using a table saw can be good and so can one on making pivot tables in Microsoft Excel.
                        </figcaption>
                        <a href="#">Video Tutorials</a>

                    </figure>
                    <figure data-aos="fade-up" class="imghvr-shutter-out-diag-1" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-comment" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Click Here For Live Chat</h3>
                            Online chat may refer to any kind of communication over the Internet that offers a real-time transmission of text messages.
                        </figcaption>
                        <a href="#">Live Chat</a>
                    </figure>
                </div>
            </div>

        </div>
       



       


        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,160L34.3,181.3C68.6,203,137,245,206,234.7C274.3,224,343,160,411,144C480,128,549,160,617,176C685.7,192,754,192,823,192C891.4,192,960,192,1029,208C1097.1,224,1166,256,1234,240C1302.9,224,1371,160,1406,128L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
        <div class="feature-index" id="drag-here4">

            <div class="container">
                <div class="row">
                    <div class="col-4">
                        <div class="card" data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down">
                            <div class="card-background-index">
                            </div>
                            <div class="text-center p-5">
                                <h3>Wednesday, 25 December</h3>
                                <h1>Christmas</h1>
                                <p>Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25[a][10][11][12] as a religious and cultural celebration among billions of people around the world.</p>
                            </div>
                            <div class="card-stats">
                                <div class="stat">
                                    <div class="value">4M</div>
                                    <div class="type">Read</div>
                                </div>
                                <div class="stat stat-border">
                                    <div class="value">609</div>
                                    <div class="type">Views</div>
                                </div>
                                <div class="stat">
                                    <div class="value">32</div>
                                    <div class="type">Comments</div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-4">
                        <div class="card" data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down">
                            <div class="card-background-index2">
                            </div>
                            <div class="text-center p-5">
                                <h3>Tuesday, 31 September</h3>
                                <h1 style="color: #ff9900">Tree-planting</h1>
                                <p>Tree-planting is the process of transplanting tree seedlings, generally for forestry, land reclamation, or landscaping purpose. It differs from the transplantation of larger trees in arboriculture</p>

                            </div>
                            <div class="card-stats">
                                <div class="stat">
                                    <div class="value">4M</div>
                                    <div class="type">Read</div>
                                </div>
                                <div class="stat stat-border">
                                    <div class="value">609</div>
                                    <div class="type">Views</div>
                                </div>
                                <div class="stat">
                                    <div class="value">32</div>
                                    <div class="type">Comments</div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-4">
                        <div class="card" data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down">
                            <div class="card-background-index3">
                            </div>
                            <div class="text-center p-5">
                                <h3>Monday, 28 November</h3>
                                <h1>Dance</h1>
                                <p>We’re connecting musicians and dancers to give everyone a bigger, better, more visible platform to express their art</p>
                            </div>
                            <div class="card-stats">
                                <div class="stat">
                                    <div class="value">4M</div>
                                    <div class="type">Read</div>
                                </div>
                                <div class="stat stat-border">
                                    <div class="value">609</div>
                                    <div class="type">Views</div>
                                </div>
                                <div class="stat">
                                    <div class="value">32</div>
                                    <div class="type">Comments</div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,192L26.7,186.7C53.3,181,107,171,160,165.3C213.3,160,267,160,320,181.3C373.3,203,427,245,480,229.3C533.3,213,587,139,640,122.7C693.3,107,747,149,800,186.7C853.3,224,907,256,960,240C1013.3,224,1067,160,1120,144C1173.3,128,1227,160,1280,154.7C1333.3,149,1387,107,1413,85.3L1440,64L1440,0L1413.3,0C1386.7,0,1333,0,1280,0C1226.7,0,1173,0,1120,0C1066.7,0,1013,0,960,0C906.7,0,853,0,800,0C746.7,0,693,0,640,0C586.7,0,533,0,480,0C426.7,0,373,0,320,0C266.7,0,213,0,160,0C106.7,0,53,0,27,0L0,0Z"></path></svg>


































   


   
    <!--------------  gallery     ----------------------------------------------->
        <div class="gallery-index" style="text-align: center;" id="drag-here3">
            <div class="navaigation">
                <a data-filter="all" class="button active">All</a>
                <a data-filter="library" class="button">Library</a>
                <a data-filter="sport" class="button">Sports</a>
                <a data-filter="event" class="button">Events</a>

            </div>
            <div class="ImageContainer">

                <div class="filter library">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/2.png" alt="">
                </div>
                <div class="filter library">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/3.jpg" alt="">
                </div>
                <div class="filter">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/c1.jfif" alt="">
                </div>
                <div class="filter">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/c2.jfif" alt="">
                </div>


                <div class="filter">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/c5.jfif" alt="">
                </div>
                <div class="filter event">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/e1.jfif" alt="">
                </div>
                <div class="filter event">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/e2.jpg" alt="">
                </div>
                <div class="filter event">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/e3.jpg" alt="">
                </div>
                <div class="filter event">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/e4.jpg" alt="">
                </div>


                <div class="filter sport">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/s3.jpg" alt="">
                </div>
                <div class="filter sport">
                    <img data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" src="images/s4.jpg" alt="">
                </div>


            </div>
         
        </div>






<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,256L30,234.7C60,213,120,171,180,160C240,149,300,171,360,202.7C420,235,480,277,540,266.7C600,256,660,192,720,149.3C780,107,840,85,900,80C960,75,1020,85,1080,122.7C1140,160,1200,224,1260,224C1320,224,1380,160,1410,128L1440,96L1440,320L1410,320C1380,320,1320,320,1260,320C1200,320,1140,320,1080,320C1020,320,960,320,900,320C840,320,780,320,720,320C660,320,600,320,540,320C480,320,420,320,360,320C300,320,240,320,180,320C120,320,60,320,30,320L0,320Z"></path></svg>
<div class="feedback-form" data-aos="fade-up">
    <div class="feedback-form-inner" data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="ease-in-out-cubic">
        <div class="row">
            <div class="col-4 text-center" style="background:#0099ff;">
                <br /><br /><br /><br />
                <h3><i class="fa fa-university" aria-hidden="true"></i> </h3>
                <h4>Jaysingpur College Jaysingpur</h4>
                <h4>Feedback</h4>
            </div>
            <div class="col-8">
                <div class="form-group p-1">
                    <div class="row">
                        <div class="col-11">
                            <label>Name</label><br />
                            <asp:TextBox ID="TextBox1" CssClass="feedback-form-textbox" placeholder="Your Answer" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="col-1">
                            <br /><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                </div>

                <div class="form-group p-1">
                    <div class="row">
                        <div class="col-4">
                            <label>Contact</label><br />
                            <asp:TextBox ID="TextBox3" CssClass="feedback-form-textbox" Text="Your Answer"   runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="col-2">
                            <br /><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox3" runat="server" Font-Bold="true" Font-Size="17px" ForeColor="red" ErrorMessage="10 Digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>



                        </div>
                         <div class="col-4">
                            <label>Email</label><br />
                            <asp:TextBox ID="TextBox4" CssClass="feedback-form-textbox" Text="Your Answer"   runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="col-2">
                            <br /><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox4" runat="server" Font-Bold="true" Font-Size="17px" ForeColor="red" ErrorMessage="Valid Email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>



                        </div>
                    </div>
                </div>

                <div class="form-group p-1">
                    <div class="row">
                        <div class="col-11">
                            <label>Address</label><br />
                            <asp:TextBox ID="TextBox2" CssClass="feedback-form-textbox" placeholder="Your Answer" runat="server"></asp:TextBox>
                           
                        </div>
                        <div class="col-1">
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                </div>








                  <div class="form-group p-1">
                    <div class="row">
                        <div class="col-4">
                            <label>Date</label><br />
                            <asp:TextBox ID="TextBox5" CssClass="feedback-form-textbox" TextMode="Date" runat="server"></asp:TextBox>
                          
                           
                        </div>
                        <div class="col-1">
                            <br /><br />
                           <asp:RequiredFieldValidator ID="Requir1" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                            

                        </div>
                         <div class="col-4">
                            <label>Description</label><br />
                            <asp:TextBox ID="TextBox6" CssClass="feedback-form-textbox" placeholder="Your Answer" runat="server" TextMode="MultiLine"></asp:TextBox>
                           
                        </div>
                        <div class="col-1">
                            <br /><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Font-Bold="true" Font-Size="25px" ForeColor="red" runat="server" ErrorMessage="*" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>


                        </div>
                          
                    </div>
                     
                </div>
                <div class="form-group">
                     <div class="row">
                        <div class="col-12">
                            <asp:Button CssClass="feedback-form-btn" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                          
                           
                        </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,224L20,224C40,224,80,224,120,197.3C160,171,200,117,240,90.7C280,64,320,64,360,69.3C400,75,440,85,480,85.3C520,85,560,75,600,64C640,53,680,43,720,58.7C760,75,800,117,840,154.7C880,192,920,224,960,202.7C1000,181,1040,107,1080,106.7C1120,107,1160,181,1200,186.7C1240,192,1280,128,1320,106.7C1360,85,1400,107,1420,117.3L1440,128L1440,0L1420,0C1400,0,1360,0,1320,0C1280,0,1240,0,1200,0C1160,0,1120,0,1080,0C1040,0,1000,0,960,0C920,0,880,0,840,0C800,0,760,0,720,0C680,0,640,0,600,0C560,0,520,0,480,0C440,0,400,0,360,0C320,0,280,0,240,0C200,0,160,0,120,0C80,0,40,0,20,0L0,0Z"></path></svg>


















<script>
    AOS.init();
</script>





















       <div class="container">
           <div class="row">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input disabled value="I am not editable" id="disabled" type="text" class="validate">
          <label for="disabled">Disabled</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
            <input id="email_inline" type="email" class="validate">
            <label for="email_inline">Email</label>
            <span class="helper-text" data-error="wrong" data-success="right">Helper text</span>
          </div>
        </div>
      </div>
    </form>
  </div>
        


       </div>


  <a class="btn" onclick="M.toast({html: 'I am a toast', completeCallback: function(){alert('Your toast was dismissed')}})">Toast!</a>



    </form>
</body>
</html>
