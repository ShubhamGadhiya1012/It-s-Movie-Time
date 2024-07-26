<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="E_ticket.aspx.cs" Inherits="Movie.E_ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ticket Booking</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
    <link rel="stylesheet" href="https://npmcdn.com/flickity@2/dist/flickity.css">
    <link rel="stylesheet" type="text/css" href="assets/css/progress.css">

    <link rel="stylesheet" type="text/css" href="assets/css/ticket-booking.css">

    <!-- ..............For progress-bar............... -->
    <link rel="stylesheet" type="text/css" href="assets/css/e-ticket.css">

    <link rel="stylesheet" type="text/css" href="assets/css/payment.css" />
    <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700" rel="stylesheet">
</head>

<body>
    <form id="form" runat="server">

        <header id="site-header" class="w3l-header fixed-top">

            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="Homepage.aspx"><span class="fa fa-play icon-log" aria-hidden="true"></span>
                        It's Movie Time </a></h1>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    </div>

                    <div class="Login_SignUp" id="login_s">
                        <!-- style="font-size: 2rem ; display: inline-block; position: relative;" -->
                        <!-- <li class="nav-item"> -->
                        <%--<a class="nav-link" href="sign_in.html"><i class="fa fa-user-circle-o"></i></a>--%>
                        <!-- </li> -->
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

        <div class="container" id="progress-container-id">
            <div class="row">
                <div class="col">
                    <div class="px-0 pt-4 pb-0 mt-3 mb-3">

                        <ul id="progressbar" class="progressbar-class">
                            <li class="active" id="step1">Movies Selection</li>
                            <li class="active" id="step2" class="not_active">Seat Selection</li>
                            <li class="active" id="step3" class="not_active">Payment</li>
                            <li class="active" id="step4" class="not_active">E-Ticket</li>
                        </ul>
                        <br>

                        <fieldset>
                            <h2>E-Ticket</h2>
                            <div class="ticket-body" id="makepdf">
                                <div class="ticket">
                                    <div class="holes-top"></div>
                                    <div class="title">
                                        <p class="cinema"><asp:Label ID="Label1" runat="server" Text="Label1" ></asp:Label></p>
                                        
                                    </div>
                                    <div class="poster">
                                        <img src="itsmovie.jpg"
                                            />
                                    </div>
                                    <div class="info">
                                        <table class="info-table ticket-table">
                                            <tr>
                                                <th>SCREEN </th>
                                                <th>ROW</th>
                                                <th>SEAT</th>
                                            </tr>
                                            <tr>
                                                <td class="bigger">18</td>
                                                <td class="bigger">H</td>
                                                <td class="bigger"><asp:Label ID="Label2" runat="server" Text="Label1" ></asp:Label></td>
                                            </tr>
                                        </table>
                                        <table class="info-table ticket-table">
                                            <tr>
                                                <th>PRICE</th>
                                                <th>DATE</th>
                                                <th>TIME</th>
                                            </tr>
                                            <tr>
                                                <td><asp:Label ID="Label3" runat="server" Text="Label1" ></asp:Label></td>
                                                <td><asp:Label ID="Label4" runat="server" Text="Label1" ></asp:Label></td>
                                                <td><asp:Label ID="Label5" runat="server" Text="Label1" ></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                 </div>
                            </div>


                            <asp:Button ID="home" class="next-step pay-btn" runat="server" Text="Browse to Home Page" OnClick="btn_home" />
                            <asp:Button ID="button" class="home-page-btn" runat="server" Text="Generate PDF" />

                        </fieldset>
    </form>
    </div>
      </div>
    </div>
  </div>
</body>


<script>
    let button = document.getElementById("button");
    let makepdf = document.getElementById("makepdf");

    button.addEventListener("click", function () {
        let mywindow = window.open("", "PRINT",
            "height=400,width=600");

        mywindow.document.write(makepdf.innerHTML);

        mywindow.document.close();
        mywindow.focus();

        mywindow.print();
        mywindow.close();

        return true;
    });
</script>


<script>
    let prevId = "1";

    window.onload = function () {
        document.getElementById("screen-next-btn").disabled = true;
    }

    function timeFunction() {
        document.getElementById("screen-next-btn").disabled = false;
    }

    function myFunction(id) {
        document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
        document.getElementById(id).style.background = "#df0e62";
        prevId = id;
    }
</script>

<script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
<script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
</script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src="assets/js/theme-change.js"></script>

<script type="text/javascript" src="assets/js/ticket-booking.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js">
</script>

</html>
