<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Movie.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>History</title>

    <link rel="stylesheet" href="assets/css/style-starter.css">
    <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
        rel="stylesheet">
</head>

<style>
    table {
        border: 2px solid black;
        border-radius: 5px;
        width: 90%;
    }


    .dataview tr {
        
        padding: 0px;
        border-radius: 100px;
        border: 1px solid black;
        padding-bottom: 4px;
        padding-top: 4px;
        
    }

    .dataview td {
        
        padding: 100px;
        border: 1px solid black;
        padding-bottom: 4px;
        padding-top: 4px;
        color:black;
        
        text-align: center;
    }
</style>


<body>
    <form id="form1" runat="server">
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
                        <li class="nav-item">
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
                            <a class="nav-link active" href="History.aspx">History</i></a>
                        </li>
                    </ul>


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


    <br><br>
    <br><br>
    <br><br>

        <table class="dataview">
            <tr>


                <td><b>Movie Name</b></td>
                <td><b>Email</b></td>
            
                <td><b>Date</b></td>
                <td><b>Time</b></td>
                <td><b>Seats</b></td>
                <td><b>Price</b></td>


            </tr>




<%--            <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>  --%>



            <% for (int i = 0; i < hemail.Length; i++)
                { %>


            <tr>



                <td><%=hemail[i] %> </td>
                <td><%=hname[i] %> </td>
                <td><%=hdate[i]%>  </td>
                <td><%=htime[i] %> </td>
                <td><%=hseat[i] %> </td>
                <td><%=hprice[i] %> </td>




            </tr>
            <% }%>
        </table>

    </form>


</body>
</html>
