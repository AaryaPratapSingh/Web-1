﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaveApplication.aspx.cs" Inherits="HRMS.LeaveManagement" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    
    <!-- theme meta -->
    <meta name="theme-name" content="quixlab" />
  
    <title>Quixlab - Bootstrap Admin Dashboard Template by Themefisher.com</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Pignose Calender -->
    <link href="./plugins/pg-calendar/css/pignose.calendar.min.css" rel="stylesheet">
    <!-- Chartist -->
    <link rel="stylesheet" href="./plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="./plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>
    <form id="form1" runat="server">

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="./images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="images/logo-text.png" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">    
            <div class="header-content clearfix">
                
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left">
                    <div class="input-group icons">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                        <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                        <div class="drop-down animated flipInX d-md-none">
                            <form action="#">
                                <input type="text" class="form-control" placeholder="Search">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="header-right">
                    <ul class="clearfix">
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">3 New Messages</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Saiful Islam</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Adam Smith</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Barak Obama</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Hilari Clinton</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </li>
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">2 New Notifications</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events near you</h6>
                                                    <span class="notification-text">Within next 5 days</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Started</h6>
                                                    <span class="notification-text">One hour ago</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Ended Successfully</h6>
                                                    <span class="notification-text">One hour ago</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events to Join</h6>
                                                    <span class="notification-text">After two days</span> 
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </li>
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="javascript:void()">English</a></li>
                                        <li><a href="javascript:void()">Dutch</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <span class="activity active"></span>
                                <img src="images/user/1.png" height="40" width="40" alt="">
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="app-profile.html"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                            </a>
                                        </li>
                                        
                                        <hr class="my-2">
                                        <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li>
                                        <li><a href="page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

         <!--**********************************
         Sidebar start
         ***********************************-->
        <div class="nk-sidebar">
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <!-- Dashboard -->
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                        </a>
                       
                    </li>
                    <!-- Employee -->
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void(0);" aria-expanded="false">
                            <i class="icon-user menu-icon"></i><span class="nav-text">Employee</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="UploadDoc.aspx">Upload Documents</a></li>
                            <li><a href="MyDoc.aspx">My Documents</a></li>
                            <li><a href="Attendance.aspx">Attendance</a></li>
                            <li><a href="LeaveApplication.aspx">Leave Application</a></li>
                            <li><a href="SignIn.aspx">+</a></li>
                        </ul>
                    </li>
                    <!-- Events -->
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void(0);" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Events</span>
                        </a>

                        <ul aria-expanded="false">
                            <li><a href="ViewEvents.aspx">View Events</a></li>
                            <li><a href="SignIn.aspx">+</a></li>

                        </ul>
                    </li>
                   
                    <!-- Email -->
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i><span class="nav-text">Email</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./email-inbox.html">Inbox</a></li>
                            <li><a href="./email-read.html">Read</a></li>
                            <li><a href="./email-compose.html">Compose</a></li>
                        </ul>
                    </li>
                    <!-- Chart -->
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-pie-chart menu-icon"></i><span class="nav-text">Charts</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./chart-flot.html">Flot</a></li>
                            <li><a href="./chart-morris.html">Morris</a></li>
                            <li><a href="./chart-chartjs.html">Chartjs</a></li>
                            <li><a href="./chart-chartist.html">Chartist</a></li>
                            <li><a href="./chart-sparkline.html">Sparkline</a></li>
                            <li><a href="./chart-peity.html">Peity</a></li>
                        </ul>
                    </li>
                    <!-- Contact & Support -->
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-support menu-icon"></i><span class="nav-text">Contact & Support</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="AskedQueries.aspx">Ask Queries</a></li>
                        </ul>
                    </li>
                    <!-- Login -->
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-login menu-icon"></i><span class="nav-text">Login</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="SignIn.aspx">SignIn</a></li>
                            <li><a href="SignUp.aspx">SignUp</a></li>
                            <li><a href="SignIn.aspx">+</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    <!--**********************************
                Sidebar end
    ***********************************-->

<!--**********************************
    Content body start
***********************************-->
<div class="content-body">
    <div class="container-fluid mt-3">
       <style>
    /* General Styling */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 0;
    }

    /* Centered and styled container */
    .container {
        width: 50%;
        margin: 50px auto;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px 40px;
    }

    /* Header styling */
    h1 {
        text-align: center;
        color: #0056b3;
        font-size: 2.5em;
        margin-bottom: 20px;
    }

    /* Form labels styling */
    .nav-label {
        font-size: 1.1em;
        font-weight: bold;
        color: #333;
        margin: 15px 0 5px;
        display: block;
    }

    /* Input and dropdown styling */
    input[type="text"],
    input[type="date"],
    select,
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
        box-sizing: border-box;
        outline: none;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="date"]:focus,
    select:focus,
    textarea:focus {
        border-color: #007bff;
    }

    textarea {
        resize: vertical;
        min-height: 100px;
    }

    /* Centered Button Styling */
    .btn-submit {
        display: block;
        margin: 20px auto;
        background-color: #28a745;
        color: #fff;
        font-size: 1.2em;
        padding: 10px 30px;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        text-align: center;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn-submit:hover {
        background-color: #4CAF50;
        transform: scale(1.05);
    }

    .btn-submit:focus {
        outline: none;
        box-shadow: 0 0 5px rgba(40, 167, 69, 0.8);
    }
</style>

<div class="container">
    <h1>Leave Application Page</h1>

    <ul>
        <!-- Email ID Section -->
        <li class="nav-label">Email ID</li>
        <asp:TextBox 
            ID="TextBox4" 
            runat="server" 
            placeholder="Enter your email">
        </asp:TextBox>
        
        <!-- Leave Type Section -->
        <li class="nav-label">Leave Type</li>
        <asp:DropDownList 
            ID="DropDownList1" 
            runat="server">
            <asp:ListItem>Paid Leave</asp:ListItem>
            <asp:ListItem>Sick Leave</asp:ListItem>
            <asp:ListItem>Casual Leave</asp:ListItem>
            <asp:ListItem>Maternity Leave</asp:ListItem>
        </asp:DropDownList>

        <!-- Date Sections -->
        <li class="nav-label">From</li>
        <asp:TextBox 
            ID="TextBox1" 
            runat="server" 
            TextMode="Date">
        </asp:TextBox>

        <li class="nav-label">To</li>
        <asp:TextBox 
            ID="TextBox2" 
            runat="server" 
            TextMode="Date">
        </asp:TextBox>

        <!-- Reason Section -->
        <li class="nav-label">Reason</li>
        <asp:TextBox 
            ID="TextBox3" 
            runat="server" 
            TextMode="MultiLine" 
            placeholder="Enter your reason here">
        </asp:TextBox>

        <!-- Centered Submit Button -->
        <asp:Button 
            ID="Button1" 
            runat="server" 
            Text="Submit" 
            OnClick="Button1_Click" 
            CssClass="btn-submit">
        </asp:Button>
    </ul>
</div>

    </div>
</div>
<!--**********************************
    Content body end
***********************************-->




        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="plugins/common/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/gleek.js"></script>
    <script src="js/styleSwitcher.js"></script>

    <!-- Chartjs -->
    <script src="./plugins/chart.js/Chart.bundle.min.js"></script>
    <!-- Circle progress -->
    <script src="./plugins/circle-progress/circle-progress.min.js"></script>
    <!-- Datamap -->
    <script src="./plugins/d3v3/index.js"></script>
    <script src="./plugins/topojson/topojson.min.js"></script>
    <script src="./plugins/datamaps/datamaps.world.min.js"></script>
    <!-- Morrisjs -->
    <script src="./plugins/raphael/raphael.min.js"></script>
    <script src="./plugins/morris/morris.min.js"></script>
    <!-- Pignose Calender -->
    <script src="./plugins/moment/moment.min.js"></script>
    <script src="./plugins/pg-calendar/js/pignose.calendar.min.js"></script>
    <!-- ChartistJS -->
    <script src="./plugins/chartist/js/chartist.min.js"></script>
    <script src="./plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>



    <script src="./js/dashboard/dashboard-1.js"></script>
    </form>
</body>

</html>

