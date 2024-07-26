<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pyment_page.aspx.cs" Inherits="Movie.Pyment_page" %>

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

<style>
    .pymentdrop {
        padding: 10px;
        width: 530px;
        ;
    }

    .pymentdrop2 {
        padding: 10px;
        width: 245px;
        ;
    }
</style>

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
                            <li id="step4" class="not_active">E-Ticket</li>
                        </ul>
                        <br>
                        <fieldset>
                            <!-- Payment Page -->
                            <div id="payment_div">
                                <div class="payment-row">
                                    <div class="col-75">
                                        <div class="payment-container">
                                            <div class="payment-row">
                                                <div class="col-50">
                                                    <h3 id="payment-h3">Payment</h3>
                                                    <div class="payment-row payment">
                                                        <div class="col-50 payment">
                                                            <label for="card" class="method card">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-cc-visa" style="color: navy"></i>
                                                                    <i class="fa fa-cc-amex" style="color: blue"></i>
                                                                    <i class="fa fa-cc-mastercard" style="color: red"></i>
                                                                    <i class="fa fa-cc-discover" style="color: orange"></i>
                                                                </div>
                                                               
                                                            </label>
                                                        </div>
                                                        <div class="col-50 payment">
                                                            <label for="paypal" class="method paypal">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-paypal" style="color: navy"></i>
                                                                </div>
                                                                
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <label for="cname">Cardholder's Name</label>

                                                            <asp:TextBox ID="cardname" runat="server" placeholder="Enter Name" required></asp:TextBox>
                                                        </div>
                                                        <div class="col-50">
                                                            <label for="ccnum">Credit card number</label>

                                                            <asp:TextBox ID="cardnumber" runat="server" placeholder="xxxx-xxxx-xxxx-xxxx" required></asp:TextBox>



                                                        </div>
                                                    </div>
                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <label for="expmonth">Exp Month</label>

                                                            <asp:DropDownList ID="DropDownList1" class="pymentdrop" runat="server" required>
                                                                <asp:ListItem Value=""> -- Select Month -- </asp:ListItem>
                                                                <asp:ListItem>January</asp:ListItem>
                                                                <asp:ListItem>February</asp:ListItem>
                                                                <asp:ListItem>March</asp:ListItem>
                                                                <asp:ListItem>April</asp:ListItem>
                                                                <asp:ListItem>May</asp:ListItem>
                                                                <asp:ListItem>June</asp:ListItem>
                                                                <asp:ListItem>July</asp:ListItem>
                                                                <asp:ListItem>August</asp:ListItem>
                                                                <asp:ListItem>September</asp:ListItem>
                                                                <asp:ListItem>October</asp:ListItem>
                                                                <asp:ListItem>November</asp:ListItem>
                                                                <asp:ListItem>December</asp:ListItem>
                                                            </asp:DropDownList>


                                                        </div>


                                                        <div class="col-50">
                                                            <div class="payment-row">
                                                                <div class="col-50">
                                                                    <label for="expyear">Exp Year</label>

                                                                    <asp:DropDownList ID="DropDownList2" class="pymentdrop2" runat="server" required>
                                                                        <asp:ListItem Value=""> -- Select Year -- </asp:ListItem>
                                                                        <asp:ListItem>2023</asp:ListItem>
                                                                        <asp:ListItem>2024</asp:ListItem>
                                                                        <asp:ListItem>2025</asp:ListItem>
                                                                        <asp:ListItem>2026</asp:ListItem>
                                                                        <asp:ListItem>2027</asp:ListItem>
                                                                        <asp:ListItem>2028</asp:ListItem>
                                                                        <asp:ListItem>2029</asp:ListItem>
                                                                        <asp:ListItem>2030</asp:ListItem>
                                                                        <asp:ListItem>2031</asp:ListItem>
                                                                        <asp:ListItem>2032</asp:ListItem>
                                                                        <asp:ListItem>2033</asp:ListItem>
                                                                        <asp:ListItem>2034</asp:ListItem>
                                                                        <asp:ListItem>2035</asp:ListItem>
                                                                        <asp:ListItem>2036</asp:ListItem>
                                                                        <asp:ListItem>2037</asp:ListItem>
                                                                        <asp:ListItem>2038</asp:ListItem>
                                                                        <asp:ListItem>2039</asp:ListItem>
                                                                        <asp:ListItem>2040</asp:ListItem>




                                                                    </asp:DropDownList>


                                                                </div>
                                                                <div class="col-50">
                                                                    <label for="cvv">CVV</label>

                                                                    <asp:TextBox ID="evv" runat="server" placeholder="xxx" required></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                           <%-- <asp:Label ID="Label2" runat="server" />--%>
                            <asp:Button ID="confirmpayment" class="next-step pay-btn" runat="server" Text="Confirm Payment" OnClick="btn_con" />
                        </fieldset>
    </form>
    </div>
      </div>
    </div>
  </div>
</body>
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

</html>
