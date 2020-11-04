<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="WebApplication1.index2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


     <video autoplay muted loop id="video_layout">
                    <source src="img/Visit the University of Oxford.mp4"  type="video/mp4">
                    
    </video>
       <div class="video-overly-index">

      </div>
    <br /><br />
    <div class="container mt-5">
        <div class="row mt-5">

            <div class="col-9  mt-5 ">
                <span class="header mt-5">
                    <h1 id="header-stmt">We are Changing the World<br />
                        & our Weapon<br />
                        is Quality Education</h1>
                    <span id="typed"></span>
                    <strong>

                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/apply.aspx" class="btn btn-lg-apply  mt-5">Apply Now <i class="fa fa-arrow-right" aria-hidden="true"></i></asp:HyperLink>
            </div>

      
    </div>
        <script>
            $('document').ready(function () {
                var typed = new typed('#typed'.{
                    stringsElement: '#header-stmt'
                });
            });
        </script>
         <center>
            <a href="#drag-here">
                <div class="container2">
                    <div class="chevron"></div>
                    <div class="chevron"></div>
                    <div class="chevron"></div>


                </div>
            </a>
        </center>
 </div>
    <br /><br /><br /><br /><br />  <br /><br /><br /><br /><br /><br /><br />
      <!---- <div class="wrppper-loader">
            <div class="box">
                
  <div class="loader-42"></div>
            </div>
        </div>


    
       <script>
            $(window).on("load", function () {
                setTimeout(closeloader, 2000);

            })
            function closeloader() {

                $(".wrppper-loader").fadeOut("slow");
                feedback();
            }
        </script>--->

       

        <div class="counter-wrapper text-center" data-aos="zoom-in" data-aos-duration="1500" data-aos-easing="ease-in-sine">
            <div class="container">

            
            <h1 class="text-center">Students</h1>
            <div class="row">
                <div class="col-3">
                    <h1><i class="fa fa-flask" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">2,567.00</span></h4>
                    <h2>Science</h2>

                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-graduation-cap" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,567.00</span></h4>
                     <h2>Commerce</h2>
                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-paint-brush" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">1,567.00</span></h4>
                     <h2>Arts</h2>
                </div>
                 <div class="col-3">
                    <h1><i class="fa fa-desktop" aria-hidden="true"></i></h1>
                    <h4> <span class="counter">567.00</span></h4>

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
               
                $('.counter').counterUp({
                    delay: 10,
                    time: 1000
                });
            });
        </script>

        <script>

            jQuery('#Button1').click(function () {
              
                $('.counter').counterUp({
                    delay: 10,
                    time: 1000
                });
            });
        </script>

       
  
        



        <!---------------------------------flex box------------------------------------------->


        <div class="fex-box-all-feature" data-aos="fade-up">
            <div class="container">

          
                <div class="d-flex my-flex" style="box-shadow: 4px 12px 9px gray,-0px -4px 9px gray;" data-aos="fade-up" data-aos-duration="2000" data-aos-easing="ease-in-quad">

                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-fold-up" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-youtube" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Cicks Here For Go Youtube</h3>
                            ouTube is an American video-sharing platform headquartered in San Bruno, California. Three former PayPal employees—Chad Hurley, Steve Chen, and Jawed Karim—created.
                        </figcaption>
                        <a href="https://www.youtube.com/channel/UCvgbZfGF5Rk4HXGdLW0uguQ">Youtube</a>
                    </figure>
                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-blur" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-pencil" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>You Can Get Notce Here</h3>
                            You have handwritten notes to take, business memo to share, essay to write, have a story to tell, article to edit, lecture to record, whether it's today's journal entry.
                        </figcaption>
                        <a href="notes.aspx">Notes</a>
                    </figure>
                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-fade" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-envelope-open" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>You Can Get Notice Here</h3>
                            A notice is a written or printed announcement (Example - a notice for sale). It is written in order to inform a large number of people about something that has happened.
                        </figcaption>
                        <a href="notice.aspx">Notice</a>
                    </figure>


                </div>
                <div class="d-flex my-flex bg-dark" style="box-shadow: 4px 12px 9px gray,-0px -4px 9px gray;" >

                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-zoom-out-flip-vert" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-book" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Online Library</h3>
                            Open Library is an open, editable library catalog, building towards a web page for every book ever published.
                        </figcaption>
                        <a href="libray.aspx">Online Library</a>
                    </figure>

                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-slide-up" style="background: #0099ff">
                        <h1 style="color: white"><i class="fa fa-video-camera" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h2>Video Tutorials For Student</h2>
                            instructional videos can be equally good. A tutorial video on using a table saw can be good and so can one on making pivot tables in Microsoft Excel.
                        </figcaption>
                        <a href="video.aspx">Video Tutorials</a>

                    </figure>
                    <figure data-aos-duration="1500" data-aos-easing="ease-in-sine" data-aos="flip-down" class="imghvr-shutter-out-diag-1" style="background: white">
                        <h1 style="color: #0099ff"><i class="fa fa-comment" aria-hidden="true"></i></h1>
                        <figcaption>
                            <h3>Click Here For Live Chat</h3>
                            Online chat may refer to any kind of communication over the Internet that offers a real-time transmission of text messages.
                        </figcaption>
                        <a href="chat.aspx">Live Chat</a>
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
                            <asp:Button CssClass="feedback-form-btn" OnClientClick="feedback()" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                          
                           
                        </div>
                </div>
                
            </div>
        </div>
    </div>
</div>
    <script>
        function feedback() {
            swal("Good job!", "You clicked the button!", "success");
        }
    </script>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="black" fill-opacity="1" d="M0,224L20,224C40,224,80,224,120,197.3C160,171,200,117,240,90.7C280,64,320,64,360,69.3C400,75,440,85,480,85.3C520,85,560,75,600,64C640,53,680,43,720,58.7C760,75,800,117,840,154.7C880,192,920,224,960,202.7C1000,181,1040,107,1080,106.7C1120,107,1160,181,1200,186.7C1240,192,1280,128,1320,106.7C1360,85,1400,107,1420,117.3L1440,128L1440,0L1420,0C1400,0,1360,0,1320,0C1280,0,1240,0,1200,0C1160,0,1120,0,1080,0C1040,0,1000,0,960,0C920,0,880,0,840,0C800,0,760,0,720,0C680,0,640,0,600,0C560,0,520,0,480,0C440,0,400,0,360,0C320,0,280,0,240,0C200,0,160,0,120,0C80,0,40,0,20,0L0,0Z"></path></svg>


















<script>
    AOS.init();
</script>



















</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
