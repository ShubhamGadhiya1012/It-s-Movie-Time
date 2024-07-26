<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Movie.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <link rel="stylesheet" type="text/css" href="assets/css/swiper.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">


    <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
    <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
        rel="stylesheet">

    <script type="text/javascript" src="assets/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

</head>
<body>
    <header id="site-header" class="w3l-header fixed-top">
     <!--/nav-->
     <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
         <div class="container">
             <h1><a class="navbar-brand" href="Homepage.aspx"><span class="fa fa-play icon-log" aria-hidden="true"></span>
                 It's Movie Time </a></h1>
             <!-- if logo is image enable this   
				<a class="navbar-brand" href="#index.html">
					<img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
				</a> -->
             <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                 data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                 aria-label="Toggle navigation">
                 <!-- <span class="navbar-toggler-icon"></span> -->
                 <span class="fa icon-expand fa-bars"></span>
                 <span class="fa icon-close fa-times"></span>
             </button>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav ml-auto">
                     <li class="nav-item">
                         <a class="nav-link" href="Homepage.aspx">Home</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="MoviePage.aspx">Movies</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="About.aspx">About</a>
                     </li>


                     <li class="nav-item active">
                         <a class="nav-link" href="Contact.aspx">Contact</a>
                     </li>
                      <li class="nav-item">
     <a class="nav-link" href="History.aspx">History</i></a>
 </li>
                     
                 </ul>
                 <!--/search-right-->
                 <!--/search-right-->

                 <div class="Login_SignUp" id="login"
                     style="font-size: 2rem; display: inline-block; position: relative;">
                     <!-- <li class="nav-item"> -->
                     <%--<a class="nav-link" href="sign_in.html"><i class="fa fa-user-circle-o"></i></a>--%>
                     <!-- </li> -->
                 </div>
             </div>
             <!-- toggle switch for light and dark theme -->
             <div class="mobile-position">
                 <nav class="navigation">
                     <div class="theme-switch-wrapper">
                         <label class="theme-switch" for="checkbox">
                             <input type="checkbox" id="checkbox">
                             <div class="mode-container">
                                 <i class="gg-sun"></i>
                                 <i class="gg-moon"></i>
                             </div>
                         </label>
                     </div>
                 </nav>
             </div>
         </div>
     </nav>
 </header>

    <!--/breadcrumbs -->
    <div class="w3l-breadcrumbs">
        <nav id="breadcrumbs" class="breadcrumbs">
            <div class="container page-wrapper">
                <a href="index.html">Home</a> » <span class="breadcrumb_last" aria-current="page">Contact</span>
            </div>
        </nav>
    </div>

    <br>
    <br>
    <br>
    <br>


    <section class="ftco-section contact-section ftco-no-pt">
        <div class="container">
            <div class="row block-9">
                <div class="col-md-6 order-md-last d-flex">
                    <form id="form1" runat="server" class="bg-light p-5 contact-form">
                        <div class="form-group">
                            <asp:TextBox ID="C_Name" class="form-control" placeholder="Your Name" runat="server" required></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="C_Email" MaxLength="50" PlaceHolder="Your Email" runat="server" TextMode="Email" required />


                        </div>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="C_Subject" placeholder="Subject" runat="server" required></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="C_Message" placeholder="Message" runat="server" required></asp:TextBox>


                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-primary py-3 px-5" ID="btn_signin" runat="server" Text="Send Message" OnClick="Contact_submit" />

                        </div>
                    </form>

                </div>

                <div class="col-md-6 d-flex">

                    <iframe class="bg-white"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235013.74843819765!2d72.41493465771086!3d23.02047409626497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1695056111318!5m2!1sen!2sin"
                        frameborder="0" style="min-height: 450px; border: 0;" width="1000px" aria-hidden="false"
                        tabindex="0" ></iframe>


                </div>
            </div>
        </div>

    </section>


    <br>
    <br />


   <!-- footer-66 -->
<footer class="w3l-footer">
    <section class="footer-inner-main">
        <div class="footer-hny-grids py-5">
            <div class="container py-lg-4">
                <div class="text-txt">
                    <div class="right-side">
                        <div class="row footer-about">
                            <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                <a href="movies.html">
                                    <img class="img-fluid" src="assets/images/banner1.jpg"
                                        alt=""></a>
                            </div>
                            <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                <a href="movies.html">
                                    <img class="img-fluid" src="assets/images/banner2.jpg"
                                        alt=""></a>
                            </div>
                            <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                <a href="movies.html">
                                    <img class="img-fluid" src="assets/images/banner3.jpg"
                                        alt=""></a>
                            </div>
                            <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                <a href="movies.html">
                                    <img class="img-fluid" src="assets/images/banner4.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="row footer-links">


                            <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                <h6>Movies</h6>
                                <ul>
                                    
                                    <li><a href="#">Videos</a></li>
                                    <li><a href="#">English Movies</a></li>
                                    <li><a href="#">Tailor</a></li>
                                    <li><a href="#">Upcoming Movies</a></li>
                                    <li><a href="Contact.aspx">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                <h6>Information</h6>
                                <ul>
                                    <li><a href="Login.aspx">Login</a></li>
                                    <li><a href="Homepage.aspx">Home</a> </li>
                                    <li><a href="MoviePage.aspx">Movies</a></li>
                                    <li><a href="About.aspx">About</a> </li>
                                    <li><a href="Contact.aspx">Contact</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                <h6>Locations</h6>
                                <ul>
                                    <li><a href="Homepage.aspx">Asia</a></li>
                                    <li><a href="Homepage.aspx">France</a></li>
                                    <li><a href="Homepage.aspx">Taiwan</a></li>
                                    <li><a href="Homepage.aspx">United States</a></li>
                                    <li><a href="Homepage.aspx">Korea</a></li>
                                    <li><a href="Homepage.aspx">United Kingdom</a></li>
                                </ul>
                            </div>
                            <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                <h6>Newsletter</h6>
                                <form action="#" class="subscribe mb-3" method="post">
                                    <input type="email" name="email" placeholder="Your Email Address" required="">
                                    <button><span class="fa fa-envelope-o"></span></button>
                                </form>
                                <p>
                                    Enter your email and receive the latest news, updates and special offers from us.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
		<div class="below-section">
            <div class="container">
                <div class="copyright-footer">
                    <div class="columns text-lg-left">
                        <p>&copy; 2023 It's Movie Time. All rights reserved</p>
                    </div>

                    <ul class="social text-lg-right">
                        <li><a href="https://www.facebook.com/"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                        </li>
                        <li><a href="https://www.instagram.com/"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                        </li>
                        <li><a href="https://www.twitter.com/"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                        </li>
                        <li><a href="https://www.google.com/"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <!-- move top -->
        <button onclick="topFunction()" id="movetop" title="Go to top">
            <span class="fa fa-arrow-up" aria-hidden="true"></span>
        </button>
        <script>
            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function () {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    document.getElementById("movetop").style.display = "block";
                } else {
                    document.getElementById("movetop").style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
        <!-- /move top -->

    </section>
</footer>

</body>
</html>


<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="assets/js/google-map.js"></script>

<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

