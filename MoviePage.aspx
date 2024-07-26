<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviePage.aspx.cs" Inherits="Movie.MoviePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movies</title>

    <style>
        /*@import url("https://fonts.googleapis.com/css?family=Fira+Sans:400,500,600,700,800");*/


        /*Card css*/


        body {
            background: #e2e2e2;
            width: 100%;
            height: 100vh;
        }

            body .card1 {
                width: 1000px;
                height: 330px;
                background: transparent;
                left: 0;
                right: 0;
                margin: auto;
                top: 50px;
                bottom: 0;
                border-radius: 10px;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                box-shadow: 0px 20px 30px 3px rgba(0, 0, 0, 0.55);
            }

            body .card_left1 {
                width: 40%;
                height: 330px;
                float: left;
                overflow: hidden;
                background: transparent;
            }

                body .card_left1 img {
                    width: 100%;
                    height: 330px;
                    border-radius: 10px 0 0 10px;
                    -webkit-border-radius: 10px 0 0 10px;
                    -moz-border-radius: 10px 0 0 10px;
                    position: relative;
                }

            body .card_right1 {
                width: 60%;
                float: left;
                background: #000000;
                height: 330px;
                border-radius: 0 10px 10px 0;
                -webkit-border-radius: 0 10px 10px 0;
                -moz-border-radius: 0 10px 10px 0;
            }

                body .card_right1 h2 {
                    color: white;
                    font-family: "Montserrat", sans-serif;
                    font-weight: 400;
                    text-align: left;
                    font-size: 40px;
                    margin: 30px 0 0 0;
                    padding: 0 0 0 40px;
                    letter-spacing: 1px;
                }

            body .card_right__details1 ul {
                list-style-type: none;
                padding: 0 0 0 40px;
                margin: 10px 0 0 0;
            }

                body .card_right__details1 ul li {
                    display: inline;
                    color: #e3e3e3;
                    font-family: "Montserrat", sans-serif;
                    font-weight: 400;
                    font-size: 25px;
                    padding: 0 40px 0 0;
                }


            body .card_right__review1 p {
                color: white;
                font-family: "Montserrat", sans-serif;
                font-size: 16px;
                padding: 0 40px 0 40px;
                letter-spacing: 1px;
                margin: 10px 0 10px 0;
                line-height: 20px;
            }

            body .card_right__review1 a {
                text-decoration: none;
                font-family: "Montserrat", sans-serif;
                font-size: 14px;
                padding: 0 0 0 40px;
                color: #ffda00;
                margin: 0;
            }

            body .card_right__button1 {
                padding: 0 0 0 40px;
                margin: 0px 0 0 0;
            }

                body .card_right__button1 a {
                    color: orange;
                    text-decoration: none;
                    font-family: "Montserrat", sans-serif;
                    border: 2px solid orange;
                    padding: 10px 10px 10px 10px;
                    font-size: 12px;
                    background-size: 12px 12px;
                    border-radius: 5px;
                    transition-property: all;
                    transition-duration: 0.5s;
                }

                    body .card_right__button1 a:hover {
                        color: #000000;
                        text-align: center;
                        background-color: orange;
                        background-size: 12px 12px;
                        background-repeat: no-repeat;
                        background-position: 10% 50%;
                        cursor: pointer;
                        transition-property: all;
                        transition-duration: 0.5s;
                    }
    </style>
</head>

<link rel="stylesheet" href="assets/css/style-starter.css">
<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">



<body>

    <!-- header -->
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
                     <li class="nav-item active">
                         <a class="nav-link" href="MoviePage.aspx">Movies</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="About.aspx">About</a>
                     </li>


                     <li class="nav-item">
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
                <a href="index.html">Home</a> » <span class="breadcrumb_last" aria-current="page">movies</span>
            </div>
        </nav>
    </div>
    <!--/movies -->
    <!--grids-sec1-->

    <% for (int i = 0; i < mname.Length; i++)
              { %>

    <br>
    <br>
    <div class='card1'>
        <div class='card_left1'>
            <img src="<%=mimage[i]%>">
        </div>
        <div class='card_right1'>
            <h2><%=mname[i]%></h2>
            <div class='card_right__details1'>
                <ul>
                    <li><%=mstory[i]%> </li>
                </ul>
                <ul>
                    <li><%=mdescription[i]%> </li>
                </ul>

                <div class='card_right__review1'>
                    <p>
                        IMDB Rating : <%=mrating[i]%>
                        <p>
                            #<%=mcategory[i]%><br>
                </div>
                <div class='card_right__button1'>
                    <a href='Seat_selection.aspx?id=<%=mid[i] %>'>Book Now</a>
                </div>
            </div>
        </div>
    </div>
    <br>

    <% }%>




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

<script src="assets/js/jquery-3.3.1.min.js"></script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>



