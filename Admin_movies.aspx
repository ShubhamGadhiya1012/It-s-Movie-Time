<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_movies.aspx.cs" Inherits="Movie.Admin_movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
    <link rel="icon" type="image/png" href="img/favicon.png">
    <title>Movies
    </title>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.4" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }

        .container .title {
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

            .container .title::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 30px;
                border-radius: 5px;
                background: linear-gradient(135deg, #71b7e6, #9b59b6);
            }

        .content form .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }

        form .user-details .input-box {
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }

        form .input-box span.details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .user-details .input-box input {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

            .user-details .input-box input:focus,
            .user-details .input-box input:valid {
                border-color: #9b59b6;
            }

        form .button {
            height: 45px;
            margin: 35px 0
        }

            form .button input {
                height: 100%;
                width: 100%;
                border-radius: 5px;
                border: none;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 1px;
                cursor: pointer;
                transition: all 0.3s ease;
                background: linear-gradient(135deg, #fa7fbb, #f5077a);
            }

                form .button input:hover {
                    /* transform: scale(0.99); */
                    background: linear-gradient(-135deg, #fa7fbb, #f5077a);
                }

        @media(max-width: 584px) {
            .container {
                max-width: 100%;
            }

            form .user-details .input-box {
                margin-bottom: 15px;
                width: 100%;
            }

            form .category {
                width: 100%;
            }

            .content form .user-details {
                max-height: 300px;
                overflow-y: scroll;
            }

            .user-details::-webkit-scrollbar {
                width: 5px;
            }
        }

        @media(max-width: 459px) {
            .container .content .category {
                flex-direction: column;
            }
        }

        table {
            border: 2px solid black;
            border-radius: 5px;
        }


        .dataview th {
            padding: 0px;
            border-radius: 100px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            background-color: darkgray;
        }

        .dataview td {
            padding: 0px;
            border: 1px solid black;
            padding-bottom: 4px;
            padding-top: 4px;
            text-align: center;
        }
    </style>




</head>
<body class="g-sidenav-show  bg-gray-200">
    <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
        <div class="sidenav-header">
            <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
            <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">

                <span class="ms-1 font-weight-bold text-white">It's Movie Time</span>
            </a>
        </div>
        <hr class="horizontal light mt-0 mb-2">
        <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-white " href="Admin_Dashboard.aspx">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">dashboard</i>
                        </div>
                        <span class="nav-link-text ms-1">Dashboard</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white active bg-gradient-primary" href="Admin_movies.aspx">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">table_view</i>
                        </div>
                        <span class="nav-link-text ms-1">Add Movies</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-white " href="Admin_user.aspx">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">table_view</i>
                        </div>
                        <span class="nav-link-text ms-1">Users</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white " href="Admin_account.aspx">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">format_textdirection_r_to_l</i>
                        </div>
                        <span class="nav-link-text ms-1">Admins</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white " href="Admin_contactus.aspx">
                        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                            <i class="material-icons opacity-10">notifications</i>
                        </div>
                        <span class="nav-link-text ms-1">User Contacts</span>
                    </a>
                </li>

                



                <div class="sidenav-footer position-absolute w-100 bottom-0 ">
                    <div class="mx-3">
                        <a class="btn bg-gradient-primary mt-4 w-100" href="Admin_Signin.aspx" type="button">Logout</a>
                    </div>
                </div>
    </aside>
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                    </ol>
                    <h6 class="font-weight-bolder mb-0">Add Movies</h6>
                </nav>
                <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                    <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                    </div>


                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="container-fluid py-4">
            <div class="row">
                <div class="col-12">
                    <div class="card my-4">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <h6 class="text-white text-capitalize ps-3">Add Movies</h6>
                            </div>
                        </div>
                        <div class="card-body px-0 pb-2">
                            <div class="table-responsive p-0">

                                <div class="container">
                                    <div class="title">Movies Details</div>
                                    <div class="content">
                                        <form runat="server">
                                            <div class="user-details">
                                                <div class="input-box">
                                                    <span class="details">Movie Name</span>

                                                    <asp:TextBox ID="MovieName" MaxLength="50" PlaceHolder="Enter Movie Name" runat="server" required />


                                                </div>
                                                <div class="input-box">
                                                    <span class="details">IMDB Rating</span>

                                                    <asp:TextBox ID="Rating" MaxLength="50" PlaceHolder="Enter Rating eg.7/10" runat="server" required />


                                                </div>
                                                <div class="input-box">
                                                    <span class="details">Description</span>

                                                    <asp:TextBox ID="MovieDesc" MaxLength="50" PlaceHolder="Enter Description " runat="server" required />

                                                </div>
                                                <div class="input-box">
                                                    <span class="details">Storyline</span>

                                                    <asp:TextBox ID="MovieStory" MaxLength="50" PlaceHolder="Enter Storyline" runat="server" required />

                                                </div>
                                                <div class="input-box">
                                                    <span class="details">Image Upload</span>

                                                    <asp:FileUpload ID="Movie_upload" runat="server" required />

                                                </div>
                                            </div>



                                            <div class="input-box">

                                                <span class="details">Category</span>
                                            </div>
                                            <div>

                                                <asp:RadioButton ID="Action" runat="server" Text="Action" GroupName="cat" />
                                                <asp:RadioButton ID="Comedy" runat="server" Text="Comedy" GroupName="cat" />
                                                <asp:RadioButton ID="Romantic" runat="server" Text="Romantic" GroupName="cat" />

                                            </div>

                                            <div class="button">
                                                <asp:Button ID="movieBtn" runat="server" Text="Publish" OnClick="publishBtn" />


                                            </div>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card my-4" style="width: 160vh; text-align: center;">
                        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                            <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                <h6 class="text-white text-capitalize ps-3">View Destination</h6>
                            </div>
                        </div>


                        <br>

                        <table class="dataview">
                            <tr>
                                <td><b>Name</b></td>
                                <td><b>Rating</b></td>
                                <td><b>Description</b></td>
                                <td><b>Storyline</b></td>
                                <td><b>Category</b></td>
                                <td><b>image</b></td>
                                <td><b>edit</b></td>
                                <td><b>delete</b></td>
                            </tr>

                            <% for (int i = 0; i < mname.Length; i++)
                                { %>



                            <tr>
                                <td><%=mname[i]%></td>
                                <td><%=mrating[i]%></td>
                                <td><%=mdescription[i]%></td>
                                <td><%=mstory[i]%></td>
                                <td><%=mcategory[i]%></td>
                                <td>
                                    <img src="<%=mimage[i]%>" height="100px" width="100px"></td>
                                <td><a href="AdminMovies_Update.aspx?uid= <%=mid[i]%>">📝</a></td>
                                <td><a href="Delete.aspx?id= <%=mid[i]%>">❌</a></td>


                            </tr>



                            <% }%>
                        </table>













                    </div>
                </div>
            </div>



            </form>
        </div>
    </main>

    <!--   Core JS Files   -->
    <script src="js/core/popper.min.js"></script>
    <script src="js/core/bootstrap.min.js"></script>
    <script src="js/plugins/perfect-scrollbar.min.js"></script>
    <script src="js/plugins/smooth-scrollbar.min.js"></script>
    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script >

            <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="js/material-dashboard.min.js?v=3.0.4"></script>
</body>

</html>
