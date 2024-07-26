<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seat_selection.aspx.cs" Inherits="Movie.Seat_selection" %>

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
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 75px;
        }

        .auto-style3 {
            width: 75px;
        }

        .auto-style4 {
            width: 76px;
        }

        .auto-style5 {
            width: 76px;
            text-align: center;
        }

 


        
    </style>
</head>

<body>
    <form id="form" runat="server">
        <header id="site-header" class="w3l-header fixed-top">

            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="Homepage.aspx"><span class="fa fa-play icon-log" aria-hidden="true"></span>
                        It,s Movie Time </a></h1>

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
                            <li id="step3" class="not_active">Payment</li>
                            <li id="step4" class="not_active">E-Ticket</li>
                        </ul>
                        <br>
                        <fieldset>

                            <div>
                                <%--<iframe id="seat-sel-iframe"
                                    style="box-shadow: 0 14px 12px 0 var(--theme-border), 0 10px 50px 0 var(--theme-border); width: 800px; height: 550px; display: block; margin-left: auto; margin-right: auto;"
                                    src="seat_selection/seat_sel.aspx"></iframe>--%>


                                <asp:Label ID="Label4" runat="server" Text="Select Date :" style="color:black;font-weight:bold;"/>
					<asp:TextBox ID="bookArrival" runat="server" TextMode="Date" min="2023-12-20" max="2023-12-31" style="border-radius:10px; width:150px;text-align:center;" required />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                    
			 
                                    <asp:Label ID="Label1" runat="server" Text="Select Show Time :" style="color:black;font-weight:bold;"/>
					<asp:DropDownList ID="DropDownList1" runat="server" style="border-radius:10px; width:150px;text-align:center;" required>
                        <asp:ListItem Value="">--Time --</asp:ListItem>
                        <asp:ListItem>10:00 AM</asp:ListItem>
                        <asp:ListItem>02:00 PM</asp:ListItem>
                        <asp:ListItem>05:30 PM</asp:ListItem>
                        <asp:ListItem>08:15 PM</asp:ListItem>
                        <asp:ListItem>10:45 PM</asp:ListItem>
                    </asp:DropDownList>
                                </li>

                                <br>

                                <br>
                                 <asp:Label ID="Label2" runat="server" Text="Booked Seats" style="color:black; font-weight:bold;"/>&nbsp;&nbsp;
                                <asp:Button ID="Button28" runat="server" Width="30px" Height="30px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 30px;" BackColor="Red" OnClientClick="this.disabled=true;"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Available Seats" style="color:black; font-weight:bold; "/>&nbsp;&nbsp;
                                <asp:Button ID="Button29" runat="server" Width="30px" Height="30px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 30px;" BackColor="Gray" OnClientClick="this.disabled=true;" />

                                <hr>
                                <li style="color:black; font-weight:bold;">All Eyes This Way Please!  </li>
                                <br>
                                <table style="width: 35%; margin-left: 380px; margin-bottom: 100px;">
                                    <tr>
                                        <td class="auto-style1" style="padding: 3px;">
                                            <asp:Button ID="Button1" runat="server" Text="1" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px; color:white;" OnClick="Button1_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button2" runat="server" Text="2" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button2_Click" /></td>
                                        <td class="auto-style4">
                                            <asp:Button ID="Button3" runat="server" Text="3" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button3_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button4" runat="server" Text="4" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button4_Click" /></td>
                                        <td class="auto-style5">
                                            <asp:Button ID="Button5" runat="server" Text="5" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" Font-Overline="False" OnClick="Button5_Click" /></td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style1" style="padding: 3px;">
                                            <asp:Button ID="Button6" runat="server" Text="6" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button6_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button7" runat="server" Text="7" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button7_Click" /></td>
                                        <td class="auto-style4">
                                            <asp:Button ID="Button8" runat="server" Text="8" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button8_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button9" runat="server" Text="9" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button9_Click" /></td>
                                        <td class="auto-style5">
                                            <asp:Button ID="Button10" runat="server" Text="10" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button10_Click" /></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="padding: 3px;">
                                            <asp:Button ID="Button11" runat="server" Text="11" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button11_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button12" runat="server" Text="12" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button12_Click" /></td>
                                        <td class="auto-style4">
                                            <asp:Button ID="Button13" runat="server" Text="13" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button13_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button14" runat="server" Text="14" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button14_Click" /></td>
                                        <td class="auto-style5">
                                            <asp:Button ID="Button15" runat="server" Text="15" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button15_Click" /></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="padding: 3px;">
                                            <asp:Button ID="Button16" runat="server" Text="16" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button16_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button17" runat="server" Text="17" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button17_Click" /></td>
                                        <td class="auto-style4">
                                            <asp:Button ID="Button18" runat="server" Text="18" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button18_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button19" runat="server" Text="19" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button19_Click" /></td>
                                        <td class="auto-style5">
                                            <asp:Button ID="Button20" runat="server" Text="20" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button20_Click" /></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1" style="padding: 3px;">
                                            <asp:Button ID="Button21" runat="server" Text="21" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button21_Click" /></td>

                                        <td class="auto-style3">

                                            <asp:Button ID="Button22" runat="server" Text="22" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button22_Click" /></td>
                                        <td class="auto-style4">
                                            <asp:Button ID="Button23" runat="server" Text="23" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button23_Click" /></td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button24" runat="server" Text="24" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button24_Click" /></td>
                                        <td class="auto-style5">
                                            <asp:Button ID="Button25" runat="server" Text="25" Width="50px" Height="50px" BorderWidth="3px" BorderColor="Black" Style="border-radius: 10px;color:white;" OnClick="Button25_Click" /></td>
                                    </tr>
                                </table>

                            </div>


                            <asp:Button ID="payment" class="next-step" runat="server" Text="proceed to Payment" OnClick="btn_pay" />
                            <asp:Button ID="back" class="previous-step" runat="server" Text="Back" OnClick="btn_back" />




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
