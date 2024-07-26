<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Movie.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>

    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
        rel="stylesheet">
</head>
<body>
    <!-- header -->
    <header id="site-header" class="w3l-header fixed-top">
        <!--/nav-->
        <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
            <div class="container">
                <h1><a class="navbar-brand" href="Homepage.aspx"><span class="fa fa-play icon-log"
                    aria-hidden="true"></span>
                    It's Movie Time</a></h1>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="Homepage.aspx">Home</a>
                        </li>
                        <li class="nav-item">
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
                    <div class="search-right">

                        <!-- search popup -->
                        <div id="search" class="pop-overlay">
                            <div class="popup">
                                <form action="#" method="post" class="search-box">
                                    <input type="search" placeholder="Search your Keyword" name="search"
                                        required="required" autofocus="">
                                    <button type="submit" class="btn">
                                        <span class="fa fa-search"
                                            aria-hidden="true"></span>
                                    </button>
                                </form>
                                <div class="browse-items">
                                    <h3 class="hny-title two mt-md-5 mt-4">Browse all:</h3>
                                    <ul class="search-items">
                                        <li><a href="movies.html">Action</a></li>
                                        <li><a href="movies.html">Drama</a></li>
                                        <li><a href="movies.html">Family</a></li>
                                        <li><a href="movies.html">Thriller</a></li>
                                        <li><a href="movies.html">Commedy</a></li>
                                        <li><a href="movies.html">Romantic</a></li>
                                        <li><a href="movies.html">Tv-Series</a></li>
                                        <li><a href="movies.html">Horror</a></li>
                                        <li><a href="movies.html">Action</a></li>
                                        <li><a href="movies.html">Drama</a></li>
                                        <li><a href="movies.html">Family</a></li>
                                        <li><a href="movies.html">Thriller</a></li>
                                        <li><a href="movies.html">Commedy</a></li>
                                        <li><a href="movies.html">Romantic</a></li>
                                        <li><a href="movies.html">Tv-Series</a></li>
                                        <li><a href="movies.html">Horror</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a class="close" href="#close">×</a>
                        </div>
                        <!-- /search popup -->
                        <!--/search-right-->

                    </div>
                    <div class="Login_SignUp" id="login"
                        style="font-size: 2rem; display: inline-block; position: relative;">
                        <!-- <li class="nav-item"> -->
                       <%-- <a class="nav-link" href="sign_in.html"><i class="fa fa-user-circle-o"></i></a>--%>
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
    <!-- main-slider -->
    <section class="w3l-main-slider position-relative" id="home">
        <div class="companies20-content">
            <div class="owl-one owl-carousel owl-theme">
                <div class="item">
                    <li>
                        <div class="slider-info banner-view bg bg2">
                            <div class="banner-info">
                                <h3>Latest Movie Trailers</h3>
                                <p>
                                    <h1>
                                   Avengers : End Game</h1>
                                </p>
                                <a href="#small-dialog1" class="popup-with-zoom-anim play-view1">
                                    <span class="video-play-icon">
                                        <span class="fa fa-play"></span>
                                    </span>
                                    <h6>Watch Trailer</h6>
                                </a>
                                <div id="small-dialog1" class="zoom-anim-dialog mfp-hide">
                                    <iframe src="https://www.youtube.com/watch?v=LPhqL4DqzBg" allow="autoplay; fullscreen"
                                        allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
                <div class="item">
                    <li>
                        <div class="slider-info  banner-view banner-top1 bg bg2">
                            <div class="banner-info">
                                <h3>Latest Online Movies</h3>
                                <p>
                                    <h1>Cinderella</h1></span>
                                </p>
                                <a href="#small-dialog2" class="popup-with-zoom-anim play-view1">
                                    <span class="video-play-icon">
                                        <span class="fa fa-play"></span>
                                    </span>
                                    <h6>Watch Trailer</h6>
                                </a>
                                <div id="small-dialog2" class="zoom-anim-dialog mfp-hide">
                                    <iframe src="https://player.vimeo.com/video/395376850" allow="autoplay; fullscreen"
                                        allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
                <div class="item">
                    <li>
                        <div class="slider-info banner-view banner-top2 bg bg2">
                            <div class="banner-info">
                                <h3>Latest Movie Trailers</h3>
                                <p>
                                    <h1>Joker</h1></span>
                                </p>
                                <a href="#small-dialog3" class="popup-with-zoom-anim play-view1">
                                    <span class="video-play-icon">
                                        <span class="fa fa-play"></span>
                                    </span>
                                    <h6>Watch Trailer</h6>
                                </a>
                                <div id="small-dialog3" class="zoom-anim-dialog mfp-hide">
                                    <iframe src="https://player.vimeo.com/video/389969665" allow="autoplay; fullscreen"
                                        allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
                <div class="item">
                    <li>
                        <div class="slider-info banner-view banner-top3 bg bg2">
                            <div class="banner-info">
                                <h3>Latest Online Movies</h3>
                                <p>
                                    <h1>Aladin</h1></span>
                                </p>
                                <a href="#small-dialog4" class="popup-with-zoom-anim play-view1">
                                    <span class="video-play-icon">
                                        <span class="fa fa-play"></span>
                                    </span>
                                    <h6>Watch Trailer</h6>
                                </a>
                                <div id="small-dialog4" class="zoom-anim-dialog mfp-hide">
                                    <iframe src="https://player.vimeo.com/video/323491174" allow="autoplay; fullscreen"
                                        allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
            </div>
        </div>
    </section>
    <!-- main-slider -->
    <!--grids-sec1-->
    <section class="w3l-grids">
        <div class="grids-main py-5">
            <div class="container py-lg-3">
                <div class="headerhny-title">
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">Popular Movies</h3>
                        </div>
                        
                    </div>
                </div>
                <div class="w3l-populohny-grids">
                    <div class="item vhny-grid">
                        <div class="box16">
                            <a href="https://youtu.be/oII-vaL3mZg?si=aZ__iXuRnmCWm23C">
                                <figure>
                                    <img class="img-fluid" src="assets/images/wednesday.jpeg" alt="">
                                </figure>
                                <div class="box-content">
                                    <h3 class="title">A Wednesday</h3>
                                    <h4><span class="post"><span class="fa fa-clock-o"></span>1 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16">
                            <a href="https://youtu.be/m-JIofHHU6s?si=vg7CwRCM852zcyWK">
                                <figure>
                                    <img class="img-fluid" src="assets/images/commando2.jpeg" alt="">
                                </figure>
                                <div class="box-content">
                                    <h3 class="title">Commando-3</h3>
                                    <h4><span class="post"><span class="fa fa-clock-o"></span>1 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16">
                            <a href="https://youtu.be/AVc9MsVDG-Q?si=6c6nsyq0X8FDHZlA">
                                <figure>
                                    <img class="img-fluid" src="assets/images/gujju2.jpeg" alt="">
                                </figure>
                                <div class="box-content">
                                    <h3 class="title">Gujjubhai Most Wanted</h3>
                                    <h4><span class="post"><span class="fa fa-clock-o"></span>1 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16">
                            <a href="https://youtu.be/AHjYIbxHKV0?si=SxjwbXAfWOC9MX8n">
                                <figure>
                                    <img class="img-fluid" src="assets/images/avtar-2.jpeg" alt="">
                                </figure>
                                <div class="box-content">
                                    <h3 class="title">Avatar 2</h3>
                                    <h4><span class="post"><span class="fa fa-clock-o"></span>1 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//grids-sec1-->
    <!--grids-sec2-->
    <section class="w3l-grids">
        <div class="grids-main py-5">
            <div class="container py-lg-3">
                <div class="headerhny-title">
                    <div class="w3l-title-grids">
                        <div class="headerhny-left">
                            <h3 class="hny-title">New Releases</h3>
                        </div>
                       
                    </div>
                </div>
                <div class="owl-three owl-carousel owl-theme">
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/iju2go-dy7k?si=TBHq9qBDQeGyBkZu">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n1.jpg" alt="">
                                </figure>
                                <div class="box-content">
                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd">No Time to Die</a></h3>
                        
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/iju2go-dy7k?si=TBHq9qBDQeGyBkZu" class="btn watch-button">Watch Trailer</a>
                        </div>

                    </div>
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/6gi7GRs8jqY?si=si9GW-vm8toQ3b_4">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n2.jpg" alt="">
                                </figure>
                                <div class="box-content">

                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd" >Mulan</a></h3>
                       
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/6gi7GRs8jqY?si=si9GW-vm8toQ3b_4" class="btn watch-button">Watch Trailer</a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/QsIFRmtFwz8?si=_Caq8pEb3RrV_A-k">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n3.jpg" alt="">
                                </figure>
                                <div class="box-content">

                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd" >Free Guy</a></h3>
                        
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/QsIFRmtFwz8?si=_Caq8pEb3RrV_A-k" class="btn watch-button">Watch Trailer</a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/x85Ah0ejBq0?si=v_u-8gTrHxvVACTd">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n4.jpg" alt="">
                                </figure>
                                <div class="box-content">

                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd" >My Spy</a></h3>
                        
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/x85Ah0ejBq0?si=v_u-8gTrHxvVACTd" class="btn watch-button">Watch Trailer</a>
                        </div>

                    </div>
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/IxPU9kuAb1w?si=q2ArZepJ8OBp_1Gn">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n5.jpg" alt="">
                                </figure>
                                <div class="box-content">

                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd" >Scoob</a></h3>
                        
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/IxPU9kuAb1w?si=q2ArZepJ8OBp_1Gn" class="btn watch-button">Watch Trailer</a>
                        </div>
                    </div>
                    <div class="item vhny-grid">
                        <div class="box16 mb-0">
                            <a href="https://youtu.be/AY5SrKf_2ic?si=4Bq_pbA5ngjeIKq8">
                                <figure>
                                    <img class="img-fluid" src="assets/images/n6.jpg" alt="">
                                </figure>
                                <div class="box-content">

                                    <h4><span class="post"><span class="fa fa-clock-o"></span>2 Hr 4min

                                    </span>

                                        <span class="post fa fa-heart text-right"></span>
                                    </h4>
                                </div>
                                <span class="fa fa-play video-icon" aria-hidden="true"></span>
                            </a>
                        </div>
                        <h3><a class="title-gd">Downhill</a></h3>
                        
                        <div class="button-center text-center mt-4">
                            <a href="https://youtu.be/AY5SrKf_2ic?si=4Bq_pbA5ngjeIKq8" class="btn watch-button">Watch Trailer</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!--grids-sec2-->
    <!--mid-slider -->
    <section class="w3l-mid-slider position-relative">
        <div class="companies20-content">
            <div class="owl-mid owl-carousel owl-theme">
                <div class="item">
                    <li>
                        <div class="slider-info mid-view bg bg2">
                            <div class="container">
                                <div class="mid-info">
                                    <span class="sub-text">Comedy</span>
                                    <h3>Jumanji: The Next Level</h3>
                                    <p>2019 ‧ Comedy/Action ‧ 2h 3m</p>
                                    <a class="watch" href="https://youtu.be/8qzMUBxlD9c?si=c9DDmuWdW9-DGSaC"><span class="fa fa-play"
                                        aria-hidden="true"></span>
                                        Watch Trailer</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
                <div class="item">
                    <li>
                        <div class="slider-info mid-view mid-top1 bg bg2">
                            <div class="container">
                                <div class="mid-info">
                                    <span class="sub-text">Adventure</span>
                                    <h3>Dolittle</h3>
                                    <p>2020 ‧ Family/Adventure ‧ 1h 41m</p>
                                    <a class="watch" href="https://youtu.be/0rwoYdGWGBA?si=urB_9Q6-dqspvIyY"><span class="fa fa-play"
                                        aria-hidden="true"></span>
                                        Watch Trailer</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
                <div class="item">
                    <li>
                        <div class="slider-info mid-view mid-top2 bg bg2">
                            <div class="container">
                                <div class="mid-info">
                                    <span class="sub-text">Action</span>
                                    <h3>Bad Boys for Life</h3>
                                    <p>2020 ‧ Comedy/Action ‧ 2h 4m</p>
                                    <a class="watch" href="https://youtu.be/FjTpAY1V-mo?si=o2IrP4VCVV510SVm"><span class="fa fa-play"
                                        aria-hidden="true"></span>
                                        Watch Trailer</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </div>
            </div>
        </div>
    </section>
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
<!-- responsive tabs -->
<script src="assets/js/jquery-1.9.1.min.js"></script>
<script src="assets/js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        //Horizontal Tab
        $('#parentHorizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function (event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>
<!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
<script src="assets/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
    $(document).ready(function () {
        $('.owl-one').owlCarousel({
            stagePadding: 280,
            loop: true,
            margin: 20,
            nav: true,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    stagePadding: 40,
                    nav: false
                },
                480: {
                    items: 1,
                    stagePadding: 60,
                    nav: true
                },
                667: {
                    items: 1,
                    stagePadding: 80,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<script>
    $(document).ready(function () {
        $('.owl-three').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 2,
                    nav: false
                },
                480: {
                    items: 2,
                    nav: true
                },
                667: {
                    items: 3,
                    nav: true
                },
                1000: {
                    items: 5,
                    nav: true
                }
            }
        })
    })
</script>
<script>
    $(document).ready(function () {
        $('.owl-mid').owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 1,
                    nav: false
                },
                480: {
                    items: 1,
                    nav: false
                },
                667: {
                    items: 1,
                    nav: true
                },
                1000: {
                    items: 1,
                    nav: true
                }
            }
        })
    })
</script>
<!-- script for owlcarousel -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
</script>
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>

<script src="assets/js/bootstrap.min.js"></script>
