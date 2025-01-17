﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Play2.aspx.cs" Inherits="ELearning.Play2" %>

<!doctype html>
<html lang="en">

<!-- Mirrored from transvelo.github.io/skola-html/5.1/course-single-v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Jan 2022 12:12:12 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.png">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600;700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&amp;family=Lora:wght@400;700&amp;family=Montserrat:wght@400;500;600;700&amp;family=Nunito:wght@400;700&amp;display=swap" rel="stylesheet">

    <!-- Libs CSS -->
    <link rel="stylesheet" href="assets/fonts/fontawesome/fontawesome.css">
    <link rel="stylesheet" href="assets/libs/%40fancyapps/fancybox/dist/jquery.fancybox.min.css">
    <link rel="stylesheet" href="assets/libs/aos/dist/aos.css">
    <link rel="stylesheet" href="assets/libs/choices.js/public/assets/styles/choices.min.css">
    <link rel="stylesheet" href="assets/libs/flickity-fade/flickity-fade.css">
    <link rel="stylesheet" href="assets/libs/flickity/dist/flickity.min.css">
    <link rel="stylesheet" href="assets/libs/highlightjs/styles/vs2015.css">
    <link rel="stylesheet" href="assets/libs/jarallax/dist/jarallax.css">
    <link rel="stylesheet" href="assets/libs/quill/dist/quill.core.css" />

    <!-- Map -->
    <link href='../../../api.mapbox.com/mapbox-gl-js/v0.53.0/mapbox-gl.css' rel='stylesheet' />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="assets/css/theme.min.css">

    <title>Skola</title>

</head>
<body class="bg-white">

    <!-- MODALS
    ================================================== -->
    <!-- Modal Sidebar account -->
    <div class="modal fade" id="modalExample" tabindex="-1" role="dialog" aria-labelledby="modalExampleTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-body">

            <!-- Close -->
            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>

            <!-- Heading -->
            <h2 class="fw-bold text-center mb-1" id="modalExampleTitle">
              Schedule a demo with us
            </h2>

            <!-- Text -->
            <p class="font-size-lg text-center text-muted mb-6 mb-md-8">
              We can help you solve company communication.
            </p>

            <!-- Form -->
            <form>
              <div class="row">
                <div class="col-12 col-md-6">

                  <!-- First name -->
                  <div class="form-label-group">
                    <input type="text" class="form-control form-control-flush" id="registrationFirstNameModal" placeholder="First name">
                    <label for="registrationFirstNameModal">First name</label>
                  </div>

                </div>
                <div class="col-12 col-md-6">

                  <!-- Last name -->
                  <div class="form-label-group">
                    <input type="text" class="form-control form-control-flush" id="registrationLastNameModal" placeholder="Last name">
                    <label for="registrationLastNameModal">Last name</label>
                  </div>

                </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-6">

                  <!-- Email -->
                  <div class="form-label-group">
                    <input type="email" class="form-control form-control-flush" id="registrationEmailModal" placeholder="Email">
                    <label for="registrationEmailModal">Email</label>
                  </div>

                </div>
                <div class="col-12 col-md-6">

                  <!-- Password -->
                  <div class="form-label-group">
                    <input type="password" class="form-control form-control-flush" id="registrationPasswordModal" placeholder="Password">
                    <label for="registrationPasswordModal">Password</label>
                  </div>

                </div>
              </div>
              <div class="row">
                <div class="col-12">

                  <!-- Submit -->
                  <button class="btn btn-block btn-primary mt-3 lift">
                    Request a demo
                  </button>

                </div>
              </div>
            </form>

          </div>
        </div>
      </div>
    </div>

    <div class="modal modal-sidebar left fade-left fade" id="accountModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Signin -->
                <div class="collapse show" id="collapseSignin" data-bs-parent="#accountModal">
                    <div class="modal-header">
                        <h5 class="modal-title">Log In to Your Skola Account!</h5>
                        <button type="button" class="close text-primary" data-bs-dismiss="modal" aria-label="Close">
                            <!-- Icon -->
                            <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                                <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                            </svg>

                        </button>
                    </div>

                    <div class="modal-body">
                        <!-- Form Signin -->
                        <form class="mb-5">

                            <!-- Email -->
                            <div class="form-group mb-5">
                                <label for="modalSigninEmail">
                                    Username or Email
                                </label>
                                <input type="email" class="form-control" id="modalSigninEmail" placeholder="creativelayers">
                            </div>

                            <!-- Password -->
                            <div class="form-group mb-5">
                                <label for="modalSigninPassword">
                                    Password
                                </label>
                                <input type="password" class="form-control" id="modalSigninPassword" placeholder="**********">
                            </div>

                            <div class="d-flex align-items-center mb-5 font-size-sm">
                                <div class="form-check">
                                    <input class="form-check-input text-gray-800" type="checkbox" id="autoSizingCheck">
                                    <label class="form-check-label text-gray-800" for="autoSizingCheck">
                                        Remember me
                                    </label>
                                </div>

                                <div class="ms-auto">
                                    <a class="text-gray-800" data-bs-toggle="collapse" href="#collapseForgotPassword" role="button" aria-expanded="false" aria-controls="collapseForgotPassword">Forgot Password</a>
                                </div>
                            </div>

                            <!-- Submit -->
                            <button class="btn btn-block btn-primary" type="submit">
                                LOGIN
                            </button>
                        </form>

                        <!-- Text -->
                        <p class="mb-0 font-size-sm text-center">
                            Don't have an account? <a class="text-underline" data-bs-toggle="collapse" href="#collapseSignup" role="button" aria-expanded="false" aria-controls="collapseSignup">Sign up</a>
                        </p>
                    </div>
                </div>

                <!-- Signup -->
                <div class="collapse" id="collapseSignup" data-bs-parent="#accountModal">
                    <div class="modal-header">
                        <h5 class="modal-title">Sign Up and Start Learning!</h5>
                        <button type="button" class="close text-primary" data-bs-dismiss="modal" aria-label="Close">
                            <!-- Icon -->
                            <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                                <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                            </svg>

                        </button>
                    </div>

                    <div class="modal-body">
                        <!-- Form Signup -->
                        <form class="mb-5">

                            <!-- Username -->
                            <div class="form-group mb-5">
                                <label for="modalSignupUsername">
                                    Username
                                </label>
                                <input type="text" class="form-control" id="modalSignupUsername" placeholder="John">
                            </div>

                            <!-- Email -->
                            <div class="form-group mb-5">
                                <label for="modalSignupEmail">
                                    Username or Email
                                </label>
                                <input type="email" class="form-control" id="modalSignupEmail" placeholder="johndoe@creativelayers.com">
                            </div>

                            <!-- Password -->
                            <div class="form-group mb-5">
                                <label for="modalSignupPassword">
                                    Password
                                </label>
                                <input type="password" class="form-control" id="modalSignupPassword" placeholder="**********">
                            </div>

                            <!-- Submit -->
                            <button class="btn btn-block btn-primary" type="submit">
                                SIGN UP
                            </button>

                        </form>

                        <!-- Text -->
                        <p class="mb-0 font-size-sm text-center">
                            Already have an account? <a class="text-underline" data-bs-toggle="collapse" href="#collapseSignin" role="button" aria-expanded="true" aria-controls="collapseSignin">Log In</a>
                        </p>
                    </div>
                </div>

                <!-- Forgot Password -->
                <div class="collapse" id="collapseForgotPassword" data-bs-parent="#accountModal">
                    <div class="modal-header">
                        <h5 class="modal-title">Recover password!</h5>
                        <button type="button" class="close text-primary" data-bs-dismiss="modal" aria-label="Close">
                            <!-- Icon -->
                            <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                                <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                            </svg>

                        </button>
                    </div>

                    <div class="modal-body">
                        <!-- Form Recover Password -->
                        <form class="mb-5">
                            <!-- Email -->
                            <div class="form-group">
                                <label for="modalForgotpasswordEmail">
                                    Email
                                </label>
                                <input type="email" class="form-control" id="modalForgotpasswordEmail" placeholder="johndoe@creativelayers.com">
                            </div>

                            <!-- Submit -->
                            <button class="btn btn-block btn-primary" type="submit">
                                RECOVER PASSWORD
                            </button>
                        </form>

                        <!-- Text -->
                        <p class="mb-0 font-size-sm text-center">
                            Remember your password? <a class="text-underline" data-bs-toggle="collapse" href="#collapseSignin" role="button" aria-expanded="false" aria-controls="collapseSignin">Log In</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Sidebar cart -->
    <div class="modal modal-sidebar left fade-left fade" id="cartModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header mb-4">
                    <h5 class="modal-title">Your Shopping Cart</h5>
                    <button type="button" class="close text-primary" data-bs-dismiss="modal" aria-label="Close">
                        <!-- Icon -->
                        <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                            <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                        </svg>

                    </button>
                </div>

                <div class="modal-body">
                    <ul class="list-group list-group-flush mb-5">
                        <li class="list-group-item border-bottom py-0">
                            <div class="d-flex py-5">
                                <div class="bg-gray-200 w-60p h-60p rounded-circle overflow-hidden"></div>

                                <div class="flex-grow-1 mt-1 ms-4">
                                    <h6 class="fw-normal mb-0">Basic of Nature</h6>
                                    <div class="font-size-sm">1 × $18.00</div>
                                </div>

                                <a href="#" class="d-inline-flex text-secondary">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10.0469 0H5.95294C5.37707 0 4.90857 0.4685 4.90857 1.04437V3.02872H6.16182V1.25325H9.83806V3.02872H11.0913V1.04437C11.0913 0.4685 10.6228 0 10.0469 0Z" fill="currentColor"/>
                                        <path d="M11.0492 5.51652L9.7968 5.47058L9.52527 12.8857L10.7777 12.9315L11.0492 5.51652Z" fill="currentColor"/>
                                        <path d="M8.62666 5.49353H7.37341V12.9087H8.62666V5.49353Z" fill="currentColor"/>
                                        <path d="M6.47453 12.8855L6.203 5.47034L4.95056 5.51631L5.22212 12.9314L6.47453 12.8855Z" fill="currentColor"/>
                                        <path d="M0.543091 2.4021V3.65535H1.849L2.885 15.4283C2.9134 15.7519 3.18434 16 3.50912 16H12.4697C12.7946 16 13.0657 15.7517 13.0939 15.4281L14.1299 3.65535H15.4569V2.4021H0.543091ZM11.8958 14.7468H4.08293L3.10706 3.65535H12.8719L11.8958 14.7468Z" fill="currentColor"/>
                                    </svg>

                                </a>
                            </div>
                        </li>

                        <li class="list-group-item border-bottom py-0">
                            <div class="d-flex py-5">
                                <div class="bg-gray-200 w-60p h-60p rounded-circle overflow-hidden"></div>

                                <div class="flex-grow-1 mt-1 ms-4">
                                    <h6 class="fw-normal mb-0">Color Harriet Tubman</h6>
                                    <div class="font-size-sm">1 × $18.00</div>
                                </div>

                                <a href="#" class="d-inline-flex text-secondary">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10.0469 0H5.95294C5.37707 0 4.90857 0.4685 4.90857 1.04437V3.02872H6.16182V1.25325H9.83806V3.02872H11.0913V1.04437C11.0913 0.4685 10.6228 0 10.0469 0Z" fill="currentColor"/>
                                        <path d="M11.0492 5.51652L9.7968 5.47058L9.52527 12.8857L10.7777 12.9315L11.0492 5.51652Z" fill="currentColor"/>
                                        <path d="M8.62666 5.49353H7.37341V12.9087H8.62666V5.49353Z" fill="currentColor"/>
                                        <path d="M6.47453 12.8855L6.203 5.47034L4.95056 5.51631L5.22212 12.9314L6.47453 12.8855Z" fill="currentColor"/>
                                        <path d="M0.543091 2.4021V3.65535H1.849L2.885 15.4283C2.9134 15.7519 3.18434 16 3.50912 16H12.4697C12.7946 16 13.0657 15.7517 13.0939 15.4281L14.1299 3.65535H15.4569V2.4021H0.543091ZM11.8958 14.7468H4.08293L3.10706 3.65535H12.8719L11.8958 14.7468Z" fill="currentColor"/>
                                    </svg>

                                </a>
                            </div>
                        </li>

                        <li class="list-group-item border-bottom py-0">
                            <div class="d-flex py-5">
                                <div class="bg-gray-200 w-60p h-60p rounded-circle overflow-hidden"></div>

                                <div class="flex-grow-1 mt-1 ms-4">
                                    <h6 class="fw-normal mb-0">Digital Photography</h6>
                                    <div class="font-size-sm">1 × $18.00</div>
                                </div>

                                <a href="#" class="d-inline-flex text-secondary">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10.0469 0H5.95294C5.37707 0 4.90857 0.4685 4.90857 1.04437V3.02872H6.16182V1.25325H9.83806V3.02872H11.0913V1.04437C11.0913 0.4685 10.6228 0 10.0469 0Z" fill="currentColor"/>
                                        <path d="M11.0492 5.51652L9.7968 5.47058L9.52527 12.8857L10.7777 12.9315L11.0492 5.51652Z" fill="currentColor"/>
                                        <path d="M8.62666 5.49353H7.37341V12.9087H8.62666V5.49353Z" fill="currentColor"/>
                                        <path d="M6.47453 12.8855L6.203 5.47034L4.95056 5.51631L5.22212 12.9314L6.47453 12.8855Z" fill="currentColor"/>
                                        <path d="M0.543091 2.4021V3.65535H1.849L2.885 15.4283C2.9134 15.7519 3.18434 16 3.50912 16H12.4697C12.7946 16 13.0657 15.7517 13.0939 15.4281L14.1299 3.65535H15.4569V2.4021H0.543091ZM11.8958 14.7468H4.08293L3.10706 3.65535H12.8719L11.8958 14.7468Z" fill="currentColor"/>
                                    </svg>

                                </a>
                            </div>
                        </li>
                    </ul>

                    <div class="d-flex mb-5">
                        <h5 class="mb-0 me-auto">Order Subtotal</h5>
                        <h5 class="mb-0">$121.87</h5>
                    </div>

                    <div class="d-md-flex justify-content-between">
                        <a href="#" class="d-block d-md-inline-block mb-4 mb-md-0 btn btn-primary btn-sm-wide">VIEW CART</a>
                        <a href="#" class="d-block d-md-inline-block btn btn-teal btn-sm-wide text-white">CHECKOUT</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- NAVBAR
    ================================================== -->
    <header class="navbar navbar-expand-xl navbar-light bg-white border-bottom py-2 py-xl-4">
        <div class="container-fluid">

            <!-- Brand -->
            <a class="navbar-brand me-0" href="index.html">
                <img src="assets/img/brand.svg" class="navbar-brand-img" alt="...">
            </a>

            <!-- Vertical Menu -->
            <ul class="navbar-nav navbar-vertical ms-xl-4 d-none d-xl-flex">
                <li class="nav-item dropdown">
                    <a class="nav-link pb-4 mb-n4 px-0 pt-0" id="navbarVerticalMenu" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                        <div class="bg-primary rounded py-3 px-5 d-flex align-items-center">
                            <div class="me-3 ms-1 d-flex text-white">
                                <!-- Icon -->
                                <svg width="25" height="17" viewBox="0 0 25 17" xmlns="http://www.w3.org/2000/svg">
                                    <rect width="25" height="1" fill="currentColor"/>
                                    <rect y="8" width="15" height="1" fill="currentColor"/>
                                    <rect y="16" width="20" height="1" fill="currentColor"/>
                                </svg>

                            </div>
                            <span class="text-white fw-medium me-1">Courses</span>
                        </div>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-md bg-primary rounded py-4 mt-4" aria-labelledby="navbarVerticalMenu">
                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10.5247 5.64759C10.3104 5.21736 9.6919 5.21322 9.47557 5.64759L5.37401 13.8898C5.28096 14.0767 5.29443 14.299 5.4094 14.4734L7.65635 17.8813V20.0493C7.65635 20.3729 7.91869 20.6352 8.24229 20.6352H11.7579C12.0815 20.6352 12.3439 20.3729 12.3439 20.0493V17.8813L14.5908 14.4734C14.7058 14.299 14.7192 14.0767 14.6262 13.8898L10.5247 5.64759ZM11.172 19.4633H8.82822V18.2915H11.172V19.4633ZM11.4424 17.1196H8.55779L6.57342 14.1099L9.41416 8.40131V14.1508C9.41416 14.4744 9.67651 14.7368 10.0001 14.7368C10.3237 14.7368 10.586 14.4744 10.586 14.1508V8.40131L13.4268 14.1099L11.4424 17.1196Z" fill="currentColor" fill-opacity="0.6"/>
                                        <path d="M18.2422 0.635132C17.4783 0.635132 16.827 1.12501 16.5852 1.80701H11.7578V1.22107C11.7578 0.897476 11.4955 0.635132 11.1719 0.635132H8.82812C8.50453 0.635132 8.24219 0.897476 8.24219 1.22107V1.80701H3.41484C3.17297 1.12501 2.52168 0.635132 1.75781 0.635132C0.788555 0.635132 0 1.42369 0 2.39294C0 3.3622 0.788555 4.15076 1.75781 4.15076C2.52168 4.15076 3.17297 3.66048 3.41484 2.97849H5.60676C2.87645 4.5465 1.17188 7.44322 1.17188 10.5961C1.17188 10.9197 1.43422 11.182 1.75781 11.182C2.08141 11.182 2.34375 10.9197 2.34375 10.5961C2.34375 7.06076 4.8359 3.98591 8.24219 3.18271V3.56482C8.24219 3.88841 8.50453 4.15076 8.82812 4.15076H11.1719C11.4955 4.15076 11.7578 3.88841 11.7578 3.56482V3.18267C15.1641 3.98591 17.6562 7.06076 17.6562 10.5961C17.6562 10.9197 17.9186 11.182 18.2422 11.182C18.5658 11.182 18.8281 10.9197 18.8281 10.5961C18.8281 7.44724 17.127 4.54884 14.3932 2.97888H16.5852C16.827 3.66087 17.4783 4.15076 18.2422 4.15076C19.2114 4.15076 20 3.3622 20 2.39294C20 1.42369 19.2114 0.635132 18.2422 0.635132ZM1.75781 2.97888C1.43473 2.97888 1.17188 2.71603 1.17188 2.39294C1.17188 2.06986 1.43473 1.80701 1.75781 1.80701C2.0809 1.80701 2.34375 2.06986 2.34375 2.39294C2.34375 2.71603 2.0809 2.97888 1.75781 2.97888ZM10.5859 2.97888H9.41406V1.80701H10.5859V2.97888ZM18.2422 2.97888C17.9191 2.97888 17.6562 2.71603 17.6562 2.39294C17.6562 2.06986 17.9191 1.80701 18.2422 1.80701C18.5653 1.80701 18.8281 2.06986 18.8281 2.39294C18.8281 2.71603 18.5653 2.97888 18.2422 2.97888Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Design
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M17.6062 4.12238C17.6014 4.12723 17.5965 4.12723 17.5917 4.12723H13.8383V3.02017C13.8383 1.94709 12.9497 1.06824 11.8767 1.06824H7.86113C6.78806 1.07309 5.91891 1.94709 5.92377 3.02017V4.12723H2.41321C1.08279 4.12723 0 5.20031 0 6.53073C0 6.53558 0 6.54044 0 6.54529V8.56035C0 9.39065 0.388444 10.1481 1.06822 10.59V16.4943C1.07308 17.8393 2.16072 18.9269 3.50571 18.9318H16.4943C17.8393 18.9269 18.9269 17.8393 18.9318 16.4943V10.59C19.6116 10.1481 20 9.38579 20 8.56035V6.54529C20.0049 5.21487 18.9318 4.13209 17.6062 4.12238ZM6.89488 3.02017C6.89002 2.4812 7.32217 2.0442 7.86113 2.03935H11.8767C12.4205 2.0442 12.8623 2.47635 12.8672 3.02017V4.12723H6.89488V3.02017ZM17.9655 16.4992C17.9607 17.31 17.3052 17.9655 16.4992 17.9655H3.50571C2.69483 17.9607 2.03933 17.3052 2.03933 16.4992V10.993L6.29765 12.2943C8.71085 13.0372 11.294 13.0372 13.7121 12.2943L17.9655 10.993V16.4992ZM19.0435 6.54044V8.56035H19.0337C19.0386 9.13816 18.6987 9.66256 18.1743 9.89562C18.1695 9.89562 18.1695 9.90048 18.1646 9.90048C18.1209 9.9199 18.0723 9.93932 18.0286 9.95389H18.0238L13.4256 11.362C11.1969 12.0466 8.81767 12.0466 6.58898 11.362L1.98592 9.95389C1.94222 9.93932 1.89852 9.92476 1.85482 9.90533C1.85482 9.90533 1.85967 9.90533 1.85967 9.90048C1.32071 9.67227 0.975965 9.14301 0.980821 8.55549V6.54044C0.975965 5.74898 1.61204 5.09834 2.4035 5.08863C2.40835 5.08863 2.41321 5.08863 2.42292 5.08863H17.6014C18.3928 5.08378 19.0386 5.72471 19.0435 6.52102C19.0435 6.52587 19.0435 6.53073 19.0435 6.54044Z" fill="currentColor" fill-opacity="0.6"/>
                                        <path d="M13.3965 7.0939C13.076 6.77829 12.6439 6.59863 12.1923 6.60349H7.81258C6.87545 6.60349 6.11313 7.36095 6.10828 8.30293C6.10828 8.7545 6.28793 9.18664 6.60354 9.50225C6.60354 9.50225 6.6084 9.50225 6.6084 9.50711C6.92887 9.82272 7.36101 10.0024 7.81258 10.0024H12.1923C13.1343 10.0024 13.8966 9.24005 13.8917 8.29807C13.8917 7.84651 13.7169 7.41922 13.3965 7.0939ZM12.1923 9.03126H7.81258C7.40956 9.03126 7.08424 8.70594 7.08424 8.30293C7.08424 7.89992 7.40956 7.5746 7.81258 7.5746H12.1923C12.5953 7.5746 12.9206 7.89992 12.9206 8.30293C12.9206 8.70594 12.5953 9.03126 12.1923 9.03126Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Business
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M18.2422 0.0397949H1.75781C0.788555 0.0397949 0 0.82835 0 1.79761V18.2039C0 19.1731 0.788555 19.9617 1.75781 19.9617H18.2422C19.2114 19.9617 20 19.1731 20 18.2039V1.79761C20 0.82835 19.2114 0.0397949 18.2422 0.0397949ZM1.75781 1.21167H18.2422C18.5653 1.21167 18.8281 1.47452 18.8281 1.79761V4.72729H1.17188V1.79761C1.17188 1.47452 1.43473 1.21167 1.75781 1.21167ZM18.2422 18.7898H1.75781C1.43473 18.7898 1.17188 18.5269 1.17188 18.2039V5.89917H18.8281V18.2039C18.8281 18.5269 18.5653 18.7898 18.2422 18.7898Z" fill="currentColor"/>
                                        <path d="M11.9887 7.70365C11.6912 7.57619 11.3468 7.71396 11.2193 8.01138L7.70367 16.2145C7.57616 16.5119 7.71398 16.8564 8.0114 16.9839C8.30894 17.1114 8.65335 16.9735 8.78078 16.6761L12.2964 8.47302C12.4239 8.17556 12.2861 7.83111 11.9887 7.70365Z" fill="currentColor"/>
                                        <path d="M6.94201 9.63397C6.73982 9.38128 6.37103 9.34034 6.11845 9.54249L3.18876 11.8862C2.89583 12.1205 2.89564 12.5669 3.18876 12.8013L6.11845 15.1451C6.37115 15.3473 6.73994 15.3062 6.94201 15.0536C7.14416 14.8009 7.10322 14.4321 6.85048 14.23L4.49275 12.3438L6.85048 10.4576C7.10322 10.2554 7.14416 9.88671 6.94201 9.63397Z" fill="currentColor"/>
                                        <path d="M16.8114 11.8863L13.8817 9.54251C13.629 9.34032 13.2602 9.38129 13.0581 9.63399C12.856 9.88668 12.8969 10.2554 13.1496 10.4575L15.5074 12.3438L13.1496 14.23C12.8969 14.4321 12.856 14.8009 13.0581 15.0536C13.2605 15.3065 13.6293 15.347 13.8817 15.145L16.8114 12.8013C17.1043 12.567 17.1045 12.1207 16.8114 11.8863Z" fill="currentColor"/>
                                        <path d="M2.96875 3.55469C3.29235 3.55469 3.55469 3.29235 3.55469 2.96875C3.55469 2.64515 3.29235 2.38281 2.96875 2.38281C2.64515 2.38281 2.38281 2.64515 2.38281 2.96875C2.38281 3.29235 2.64515 3.55469 2.96875 3.55469Z" fill="currentColor"/>
                                        <path d="M5.3125 3.55469C5.6361 3.55469 5.89844 3.29235 5.89844 2.96875C5.89844 2.64515 5.6361 2.38281 5.3125 2.38281C4.9889 2.38281 4.72656 2.64515 4.72656 2.96875C4.72656 3.29235 4.9889 3.55469 5.3125 3.55469Z" fill="currentColor"/>
                                        <path d="M7.65625 3.55469C7.97985 3.55469 8.24219 3.29235 8.24219 2.96875C8.24219 2.64515 7.97985 2.38281 7.65625 2.38281C7.33265 2.38281 7.07031 2.64515 7.07031 2.96875C7.07031 3.29235 7.33265 3.55469 7.65625 3.55469Z" fill="currentColor"/>
                                        <path d="M13.5156 3.55469H17.0312C17.3548 3.55469 17.6172 3.29234 17.6172 2.96875C17.6172 2.64516 17.3548 2.38281 17.0312 2.38281H13.5156C13.192 2.38281 12.9297 2.64516 12.9297 2.96875C12.9297 3.29234 13.192 3.55469 13.5156 3.55469Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Software Development
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                        <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                        <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                        <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                        <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Personal Development
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M10 0C4.47715 0 0 4.47715 0 10C0 15.5229 4.47715 20 10 20C15.5229 20 20 15.5229 20 10C20 4.47715 15.5229 0 10 0ZM17.8937 6.25H10C9.75668 6.24934 9.51387 6.27238 9.275 6.31875L12.0813 1.50625C14.6328 2.13449 16.7668 3.87617 17.8937 6.25ZM12.5 10C12.5048 11.3807 11.3893 12.5038 10.0086 12.5086C8.62789 12.5134 7.50477 11.3979 7.5 10.0172C7.49523 8.63648 8.6107 7.51336 9.99141 7.50859C10.8075 7.50578 11.5737 7.90152 12.0438 8.56875L12.0938 8.6375C12.3582 9.04277 12.4993 9.51609 12.5 10ZM10 1.25C10.2563 1.25 10.5125 1.25 10.7625 1.2875L6.9625 7.8125C6.83379 7.98977 6.72086 8.17801 6.625 8.375L3.86875 3.75C5.50613 2.1457 7.7077 1.24805 10 1.25ZM1.25 10C1.25043 8.10965 1.86699 6.27098 3.00625 4.7625L6.25 10.1875C6.29629 11.0459 6.63609 11.8623 7.2125 12.5H1.5875C1.3543 11.6875 1.24063 10.8453 1.25 10ZM2.10625 13.75H10C10.2433 13.7507 10.4861 13.7276 10.725 13.6812L7.91875 18.4937C5.36723 17.8655 3.23316 16.1238 2.10625 13.75ZM10 18.75C9.74375 18.75 9.4875 18.75 9.2375 18.7125L13.0375 12.1875C13.309 11.8108 13.5082 11.387 13.625 10.9375L16.75 15.5875C15.084 17.5953 12.6089 18.7549 10 18.75ZM13.125 7.98125L13.0375 7.85L12.9875 7.775C12.9167 7.67918 12.8396 7.58543 12.7563 7.49375H18.3813C19.0941 9.84641 18.7737 12.3912 17.5 14.4938L13.125 7.98125Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Photography
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M17.7859 0.164169C17.6493 0.0430309 17.468 -0.0150898 17.2864 0.00408285L5.71501 1.28978C5.3893 1.32583 5.14284 1.6011 5.14288 1.92877V13.3845C4.56001 13.0365 3.89315 12.8542 3.21431 12.8573C1.44194 12.8574 0 14.0107 0 15.4288C0 16.8469 1.44195 18.0002 3.21427 18.0002C4.9866 18.0002 6.42854 16.8469 6.42854 15.4288V5.72165L16.7143 4.57543V12.0969C16.1312 11.7495 15.4644 11.5679 14.7857 11.5717C13.0133 11.5717 11.5714 12.725 11.5714 14.1431C11.5714 15.5612 13.0134 16.7145 14.7857 16.7145C16.558 16.7145 18 15.5612 18 14.1431V0.64311C18 0.460272 17.9221 0.286098 17.7859 0.164169ZM3.21427 16.7145C2.169 16.7145 1.2857 16.1256 1.2857 15.4288C1.2857 14.732 2.169 14.1431 3.21427 14.1431C4.25954 14.1431 5.14284 14.732 5.14284 15.4288C5.14284 16.1256 4.25958 16.7145 3.21427 16.7145ZM14.7857 15.4288C13.7404 15.4288 12.8571 14.8399 12.8571 14.1431C12.8571 13.4462 13.7404 12.8574 14.7857 12.8574C15.831 12.8574 16.7143 13.4462 16.7143 14.1431C16.7143 14.8399 15.831 15.4288 14.7857 15.4288ZM16.7143 3.28201L6.42854 4.42503V2.50738L16.7143 1.36116V3.28201Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Audio + Music
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M21.3555 10.3555H19.4219C19.0659 10.3555 18.7773 10.644 18.7773 11C18.7773 11.356 19.0659 11.6445 19.4219 11.6445H21.3555C21.7114 11.6445 22 11.356 22 11C22 10.644 21.7114 10.3555 21.3555 10.3555Z" fill="currentColor"/>
                                        <path d="M20.5222 14.4114L19.2331 13.1223C18.9815 12.8707 18.5733 12.8707 18.3216 13.1223C18.0699 13.374 18.0699 13.7821 18.3216 14.0338L19.6107 15.3229C19.8624 15.5746 20.2705 15.5746 20.5222 15.3229C20.7739 15.0712 20.7739 14.6631 20.5222 14.4114Z" fill="currentColor"/>
                                        <path d="M20.5222 6.67703C20.2705 6.42536 19.8624 6.42536 19.6107 6.67703L18.3216 7.96609C18.0699 8.2178 18.0699 8.62588 18.3216 8.87759C18.5733 9.1293 18.9814 9.12926 19.2331 8.87759L20.5222 7.58853C20.7739 7.33682 20.7739 6.92874 20.5222 6.67703Z" fill="currentColor"/>
                                        <path d="M14.9102 2.62109C13.942 2.62109 13.1379 3.33631 12.9982 4.26611L12.4102 4.85405C11.3869 5.87735 9.87993 6.48828 8.37891 6.48828H4.51172C3.67146 6.48828 2.95505 7.02715 2.68898 7.77734H2.57812C1.15655 7.77734 0 8.93389 0 10.3555C0 11.777 1.15655 12.9336 2.57812 12.9336H2.68898C2.8835 13.482 3.31873 13.9173 3.86719 14.1118V17.4453C3.86719 18.5115 4.73464 19.3789 5.80082 19.3789C6.86697 19.3789 7.73438 18.5115 7.73438 17.4453V14.2227H8.37891C9.87989 14.2227 11.3869 14.8336 12.4102 15.8569L12.9982 16.4448C13.1379 17.3746 13.9421 18.0898 14.9102 18.0898C15.9763 18.0898 16.8438 17.2224 16.8438 16.1562V4.55469C16.8438 3.4885 15.9763 2.62109 14.9102 2.62109ZM2.57812 11.6445C1.86734 11.6445 1.28906 11.0663 1.28906 10.3555C1.28906 9.64468 1.86734 9.06641 2.57812 9.06641V11.6445ZM6.44531 17.4453C6.44531 17.8007 6.15618 18.0898 5.80078 18.0898C5.44539 18.0898 5.15625 17.8007 5.15625 17.4453V14.2227H6.44531V17.4453ZM7.73438 12.9336H4.51172C4.15632 12.9336 3.86719 12.6445 3.86719 12.2891V8.42187C3.86719 8.06648 4.15632 7.77734 4.51172 7.77734H7.73438V12.9336ZM12.9766 14.6242C11.8877 13.6819 10.4877 13.0963 9.01914 12.9628L9.01918 7.74808C10.4877 7.61462 11.8877 7.02909 12.9766 6.08665V14.6242ZM15.5547 16.1562C15.5547 16.5116 15.2656 16.8008 14.9102 16.8008H14.9102C14.5548 16.8008 14.2656 16.5116 14.2656 16.1562V4.55469C14.2656 4.19929 14.5548 3.91016 14.9102 3.91016C15.2656 3.91016 15.5547 4.19929 15.5547 4.55469V16.1562Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Marketing
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>

                        <li class="dropdown-item dropright">
                            <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                <div class="me-4 d-flex text-white icon-xs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M18.0833 1.80566H4.08796C3.03241 1.81029 2.17593 2.66678 2.17593 3.72696V3.75011H1.91667C0.861111 3.75011 0.00462963 4.60196 0 5.65752V16.2733C0.00462963 17.3288 0.856482 18.1899 1.91667 18.1946H15.912C16.9676 18.1899 17.8241 17.3334 17.8241 16.2733V16.2501H18.0833C19.1389 16.2501 19.9954 15.3983 20 14.3427V3.72696C19.9954 2.66678 19.1435 1.81029 18.0833 1.80566ZM15.912 17.2686H1.91667C1.37037 17.264 0.930556 16.8196 0.925926 16.2733V5.65752C0.930556 5.11585 1.37037 4.67603 1.91667 4.67603H15.912C16.4537 4.67603 16.8981 5.11122 16.8981 5.65752V8.30566C16.8148 8.32418 16.7315 8.33344 16.6528 8.33344H13.9815C12.5278 8.33344 11.3472 9.514 11.3472 10.9677C11.3472 12.4214 12.5278 13.602 13.9815 13.6066H16.6481C16.7315 13.602 16.8148 13.5927 16.8935 13.5834L16.8981 16.2733C16.8981 16.8196 16.4583 17.264 15.912 17.2686ZM19.0741 14.3427C19.0694 14.8844 18.6296 15.3242 18.0833 15.3242H17.8241V13.2501C18.0231 13.1159 18.2037 12.9492 18.3565 12.764L19.0741 11.8381V14.3427ZM17.625 12.2038C17.3935 12.5047 17.0324 12.6807 16.6528 12.6853H13.9815C13.037 12.6807 12.2731 11.9168 12.2731 10.9723C12.2731 10.0279 13.037 9.264 13.9815 9.25937H16.6481C16.9676 9.25937 17.2824 9.18992 17.5694 9.05103C17.875 8.90752 18.1435 8.68992 18.3519 8.4214L19.0694 7.49548L19.0741 10.3242L17.625 12.2038ZM19.0741 5.98159L17.8241 7.5927V5.65752C17.8241 4.60196 16.9676 3.75011 15.912 3.75011H3.10185V3.72696C3.10185 3.18066 3.54167 2.73622 4.08796 2.73159H18.0833C18.6296 2.73622 19.0694 3.18066 19.0741 3.72696V5.98159Z" fill="currentColor"/>
                                        <path d="M15.0185 10.5093H13.9074C13.6528 10.5093 13.4445 10.7176 13.4445 10.9722C13.4445 11.2269 13.6528 11.4352 13.9074 11.4352H15.0185C15.2732 11.4352 15.4815 11.2269 15.4815 10.9722C15.4815 10.7176 15.2732 10.5093 15.0185 10.5093Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                Finance & Accounting
                            </a>

                            <div class="dropdown-menu ps-3 top-0 pe-0 py-0 shadow-none bg-transparent">
                                <div class="dropdown-menu-md bg-primary rounded dropdown-menu-inner">
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        All Business
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Finance
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Entrepreneurship
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Communications
                                    </a>
                                    <a class="dropdown-item" href="course-single-v5.html">
                                        Management
                                    </a>
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Sales
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Operations
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>

            <!-- Search -->
            <form class="d-none d-wd-flex ms-5 w-xl-450p">
                <div class="input-group border rounded">
                    <div class="input-group-prepend">
                        <button class="btn btn-sm my-2 my-sm-0 text-secondary icon-xs d-flex align-items-center" type="submit">
                            <!-- Icon -->
                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8.80758 0C3.95121 0 0 3.95121 0 8.80758C0 13.6642 3.95121 17.6152 8.80758 17.6152C13.6642 17.6152 17.6152 13.6642 17.6152 8.80758C17.6152 3.95121 13.6642 0 8.80758 0ZM8.80758 15.9892C4.8477 15.9892 1.62602 12.7675 1.62602 8.80762C1.62602 4.84773 4.8477 1.62602 8.80758 1.62602C12.7675 1.62602 15.9891 4.8477 15.9891 8.80758C15.9891 12.7675 12.7675 15.9892 8.80758 15.9892Z" fill="currentColor"/>
                                <path d="M19.762 18.6121L15.1007 13.9509C14.7831 13.6332 14.2687 13.6332 13.9511 13.9509C13.6335 14.2682 13.6335 14.7831 13.9511 15.1005L18.6124 19.7617C18.7712 19.9205 18.9791 19.9999 19.1872 19.9999C19.395 19.9999 19.6032 19.9205 19.762 19.7617C20.0796 19.4444 20.0796 18.9295 19.762 18.6121Z" fill="currentColor"/>
                            </svg>

                        </button>
                    </div>
                    <input class="form-control form-control-sm border-0 ps-0" type="search" placeholder="What do you want to learn ?" aria-label="Search">
                </div>
            </form>

            <!-- Collapse -->
            <div class="collapse navbar-collapse z-index-lg" id="navbarCollapse">

                <!-- Toggler -->
                <button class="navbar-toggler outline-0 text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <!-- Icon -->
                    <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                        <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                    </svg>

                </button>

                <!-- Navigation -->
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown dropdown-full-width">
                        <a class="nav-link dropdown-toggle" id="navbarLandings" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        <div class="dropdown-menu border-xl shadow-none dropdown-full pt-xl-7 px-xl-8" aria-labelledby="navbarLandings">
                            <div class="row row-cols-2 row-cols-md-4 row-cols-lg-5 row-cols-xl-6">
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="index.html" target="_blank">
                                        <img src="assets/img/menu/home-v1.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v1</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v2.html" target="_blank">
                                        <img src="assets/img/menu/home-v2.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v2</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v3.html" target="_blank">
                                        <img src="assets/img/menu/home-v3.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v3</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v4.html" target="_blank">
                                        <img src="assets/img/menu/home-v4.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v4</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v5.html" target="_blank">
                                        <img src="assets/img/menu/home-v5.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v5</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v6.html" target="_blank">
                                        <img src="assets/img/menu/home-v6.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v6</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v7.html" target="_blank">
                                        <img src="assets/img/menu/home-v7.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v7</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v8.html" target="_blank">
                                        <img src="assets/img/menu/home-v8.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v8</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v9.html" target="_blank">
                                        <img src="assets/img/menu/home-v9.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v9</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v10.html" target="_blank">
                                        <img src="assets/img/menu/home-v10.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v10</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v11.html" target="_blank">
                                        <img src="assets/img/menu/home-v11.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v11</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v12.html" target="_blank">
                                        <img src="assets/img/menu/home-v12.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v12</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v13.html" target="_blank">
                                        <img src="assets/img/menu/home-v13.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v13</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v14.html" target="_blank">
                                        <img src="assets/img/menu/home-v14.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v14</h6>
                                    </a>
                                </div>
                                <div class="col mb-5 col-wd-auto">
                                    <!-- List -->
                                    <a class="dropdown-item" href="home-v15.html" target="_blank">
                                        <img src="assets/img/menu/home-v15.jpg" class="img-fluid shadow rounded border d-flex mx-auto mb-5 h-md-152" alt="...">
                                        <!-- Heading -->
                                        <h6 class="text-center mb-0">Home v15</h6>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarCourses" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Courses
                        </a>
                        <div class="dropdown-menu border-xl shadow-none dropdown-menu-lg" aria-labelledby="navbarCourses">
                            <div class="row gx-0">
                                <div class="col-md-4">
                                    <!-- Heading -->
                                    <h5 class="dropdown-header">
                                        Courses List
                                    </h5>

                                    <!-- List -->
                                    <a class="dropdown-item" href="course-list-v1.html">
                                        Courses List v1
                                    </a>
                                    <a class="dropdown-item" href="course-list-v2.html">
                                        Courses List v2
                                    </a>
                                    <a class="dropdown-item" href="course-list-v3.html">
                                        Courses List v3
                                    </a>
                                    <a class="dropdown-item" href="course-list-v4.html">
                                        Courses List v4
                                    </a>
                                    <a class="dropdown-item" href="course-list-v5.html">
                                        Courses List v5
                                    </a>
                                    <a class="dropdown-item mb-5" href="course-list-v6.html">
                                        Courses List v6
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <!-- Heading -->
                                    <h5 class="dropdown-header">
                                        Courses Single
                                    </h5>

                                    <!-- List -->
                                    <a class="dropdown-item" href="course-single-v1.html">
                                        Courses Single v1
                                    </a>
                                    <a class="dropdown-item" href="course-single-v2.html">
                                        Courses Single v2
                                    </a>
                                    <a class="dropdown-item" href="course-single-v3.html">
                                        Courses Single v3
                                    </a>
                                    <a class="dropdown-item" href="course-single-v4.html">
                                        Courses Single v4
                                    </a>
                                    <a class="dropdown-item mb-5" href="course-single-v5.html">
                                        Courses Single v5
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <!-- Heading -->
                                    <h5 class="dropdown-header">
                                        Lesson Single
                                    </h5>

                                    <!-- List -->
                                    <a class="dropdown-item" href="lesson-single-v1.html">
                                        Lesson Single v1
                                    </a>
                                    <a class="dropdown-item mb-5" href="lesson-single-v2.html">
                                        Lesson Single v2
                                    </a>

                                    <!-- Heading -->
                                    <h5 class="dropdown-header">
                                        Instructors
                                    </h5>

                                    <!-- List -->
                                    <a class="dropdown-item" href="instructors-list-v1.html">
                                        Instructors List v1
                                    </a>
                                    <a class="dropdown-item" href="instructors-list-v2.html">
                                        Instructors List v2
                                    </a>
                                    <a class="dropdown-item mb-5 mb-lg-0" href="instructors-single.html">
                                        Instructors Single
                                    </a>
                                </div>
                            </div>
                        </div> <!-- / .row -->
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarPages" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Pages
                        </a>
                        <div class="dropdown-menu border-xl shadow-none dropdown-menu-lg" aria-labelledby="navbarPages">
                            <div class="row gx-0">
                                <div class="col-6">
                                    <div class="row gx-0">
                                        <div class="col-12 col-lg-6">
                                            <!-- List -->
                                            <a class="dropdown-item" href="event-list.html">
                                                Event List
                                            </a>
                                            <a class="dropdown-item" href="event-single.html">
                                                Event Single
                                            </a>
                                            <a class="dropdown-item" href="gallery.html">
                                                Gallery
                                            </a>
                                            <a class="dropdown-item mb-5 mb-lg-0" href="pricing.html">
                                                Pricing
                                            </a>
                                        </div>
                                        <div class="col-12 col-lg-6">
                                            <!-- List -->
                                            <a class="dropdown-item" href="about-v1.html">
                                                About v1
                                            </a>
                                            <a class="dropdown-item" href="about-v2.html">
                                                About v2
                                            </a>
                                            <a class="dropdown-item" href="contact-us.html">
                                                Contact us
                                            </a>
                                            <a class="dropdown-item mb-5 mb-lg-0" href="terms-of-service.html">
                                                Terms of Service
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="row gx-0">
                                        <div class="col-12 col-lg-6">
                                            <!-- List -->
                                            <a class="dropdown-item" href="faq.html">
                                                FAQ
                                            </a>
                                            <a class="dropdown-item" href="login.html">
                                                Login
                                            </a>
                                            <a class="dropdown-item" href="register.html">
                                                Register
                                            </a>
                                            <a class="dropdown-item mb-5 mb-lg-0" href="become-instructor.html">
                                                Become an Instructor
                                            </a>
                                        </div>

                                        <div class="col-12 col-lg-6">
                                            <!-- List -->
                                            <a class="dropdown-item" href="coming-soon.html">
                                                Coming Soon
                                            </a>
                                            <a class="dropdown-item mb-5 mb-lg-0" href="404.html">
                                                404
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- / .row -->
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarBlog" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Blog
                        </a>
                        <ul class="dropdown-menu border-xl shadow-none" aria-labelledby="navbarBlog">
                            <li class="dropdown-item dropright">
                                <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                    Blog Grid
                                </a>
                                <div class="dropdown-menu border-xl shadow-none">
                                    <a class="dropdown-item" href="blog-grid-v1.html">
                                        Grid v1
                                    </a>
                                    <a class="dropdown-item" href="blog-grid-v2.html">
                                        Grid v2
                                    </a>
                                </div>
                            </li>
                            <li class="dropdown-item dropright">
                                <a class="dropdown-link dropdown-toggle" data-bs-toggle="dropdown" href="#">
                                    Blog List
                                </a>
                                <div class="dropdown-menu border-xl shadow-none">
                                    <a class="dropdown-item" href="blog-list-v1.html">
                                        List v1
                                    </a>
                                    <a class="dropdown-item" href="blog-list-v2.html">
                                        List v2
                                    </a>
                                </div>
                            </li>
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="blog-single.html">
                                    Blog Single
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarShop" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Shop
                        </a>
                        <ul class="dropdown-menu border-xl shadow-none" aria-labelledby="navbarShop">
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="shop-cart.html">
                                    Shop Cart
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="shop-checkout.html">
                                    Shop Checkout
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="shop-list.html">
                                    Shop List
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="shop-single.html">
                                    Shop Single
                                </a>
                            </li>
                            <li class="dropdown-item">
                                <a class="dropdown-link" href="shop-order-completed.html">
                                    Shop Order Completed
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDocumentation" data-bs-toggle="dropdown" href="#" aria-haspopup="true" aria-expanded="false">
                            Documentation
                        </a>
                        <div class="dropdown-menu border-xl shadow-none dropdown-menu-md" aria-labelledby="navbarDocumentation">
                            <div class="list-group list-group-flush">
                                <a class="list-group-item" href="docs/index.html">

                                    <!-- Icon -->
                                    <div class="display-4 text-primary">
                                        <i class="fas fa-clipboard"></i>
                                    </div>

                                    <!-- Content -->
                                    <div class="ms-4">

                                        <!-- Heading -->
                                        <h5 class="text-primary mb-n1">
                                            Documentation
                                        </h5>

                                        <!-- Text -->
                                        <p class="font-size-sm text-gray-700 mb-0">
                                            Customizing and building
                                        </p>

                                    </div>

                                </a>
                                <a class="list-group-item" href="docs/alerts.html">

                                    <!-- Icon -->
                                    <div class="display-4 text-primary">
                                        <i class="fas fa-th-large"></i>
                                    </div>

                                    <!-- Content -->
                                    <div class="ms-4">

                                        <!-- Heading -->
                                        <h5 class="text-primary mb-n1">
                                            Components
                                        </h5>

                                        <!-- Text -->
                                        <p class="font-size-sm text-gray-700 mb-0">
                                            Full list of components
                                        </p>

                                    </div>

                                </a>
                                <a class="list-group-item" href="docs/changelog.html">

                                    <!-- Icon -->
                                    <div class="display-4 text-primary">
                                        <i class="fas fa-file-alt"></i>
                                    </div>

                                    <!-- Content -->
                                    <div class="ms-4">

                                        <!-- Heading -->
                                        <h5 class="text-primary mb-n1">
                                            Changelog
                                        </h5>

                                        <!-- Text -->
                                        <p class="font-size-sm text-gray-700 mb-0">
                                            Keep track of changes
                                        </p>

                                    </div>

                                    <!-- Badge -->
                                    <span class="badge badge-pill badge-primary-soft ms-auto">
                                        1.0
                                    </span>

                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- Search, Account & Cart -->
            <ul class="navbar-nav flex-row ms-auto ms-xl-0 me-n2 me-md-n4">
                <li class="nav-item border-0 px-0 d-none d-370-block d-xl-none">
                    <a class="nav-link d-flex px-3 px-md-4 search-mobile text-secondary icon-xs" data-bs-toggle="collapse" href="#collapseSearchMobile" role="button" aria-expanded="false" aria-controls="collapseSearchMobile">
                        <!-- Icon -->
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M8.80758 0C3.95121 0 0 3.95121 0 8.80758C0 13.6642 3.95121 17.6152 8.80758 17.6152C13.6642 17.6152 17.6152 13.6642 17.6152 8.80758C17.6152 3.95121 13.6642 0 8.80758 0ZM8.80758 15.9892C4.8477 15.9892 1.62602 12.7675 1.62602 8.80762C1.62602 4.84773 4.8477 1.62602 8.80758 1.62602C12.7675 1.62602 15.9891 4.8477 15.9891 8.80758C15.9891 12.7675 12.7675 15.9892 8.80758 15.9892Z" fill="currentColor"/>
                            <path d="M19.762 18.6121L15.1007 13.9509C14.7831 13.6332 14.2687 13.6332 13.9511 13.9509C13.6335 14.2682 13.6335 14.7831 13.9511 15.1005L18.6124 19.7617C18.7712 19.9205 18.9791 19.9999 19.1872 19.9999C19.395 19.9999 19.6032 19.9205 19.762 19.7617C20.0796 19.4444 20.0796 18.9295 19.762 18.6121Z" fill="currentColor"/>
                        </svg>


                        <!-- Icon -->
                        <svg width="16" height="17" viewBox="0 0 16 17" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0.142135 2.00015L1.55635 0.585938L15.6985 14.7281L14.2843 16.1423L0.142135 2.00015Z" fill="currentColor"></path>
                            <path d="M14.1421 1.0001L15.5563 2.41431L1.41421 16.5564L0 15.1422L14.1421 1.0001Z" fill="currentColor"></path>
                        </svg>

                    </a>

                    <div class="collapse position-absolute right-0 left-0" id="collapseSearchMobile">
                        <div class="card card-body p-4 mt-7 shadow-dark">
                            <!-- Search -->
                            <form class="w-100">
                                <div class="input-group border rounded">
                                    <div class="input-group-prepend">
                                        <button class="btn btn-sm text-secondary icon-xs d-flex align-items-center" type="submit">
                                            <!-- Icon -->
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M8.80758 0C3.95121 0 0 3.95121 0 8.80758C0 13.6642 3.95121 17.6152 8.80758 17.6152C13.6642 17.6152 17.6152 13.6642 17.6152 8.80758C17.6152 3.95121 13.6642 0 8.80758 0ZM8.80758 15.9892C4.8477 15.9892 1.62602 12.7675 1.62602 8.80762C1.62602 4.84773 4.8477 1.62602 8.80758 1.62602C12.7675 1.62602 15.9891 4.8477 15.9891 8.80758C15.9891 12.7675 12.7675 15.9892 8.80758 15.9892Z" fill="currentColor"/>
                                                <path d="M19.762 18.6121L15.1007 13.9509C14.7831 13.6332 14.2687 13.6332 13.9511 13.9509C13.6335 14.2682 13.6335 14.7831 13.9511 15.1005L18.6124 19.7617C18.7712 19.9205 18.9791 19.9999 19.1872 19.9999C19.395 19.9999 19.6032 19.9205 19.762 19.7617C20.0796 19.4444 20.0796 18.9295 19.762 18.6121Z" fill="currentColor"/>
                                            </svg>

                                        </button>
                                    </div>
                                    <input class="form-control form-control-sm border-0 ps-0" type="search" placeholder="What do you want to learn ?" aria-label="Search">
                                </div>
                            </form>
                        </div>
                    </div>
                </li>

                <li class="nav-item border-0 px-0">
                    <!-- Button trigger account modal -->
                    <a href="#" class="nav-link d-flex px-3 px-md-4 text-secondary icon-xs" data-bs-toggle="modal" data-bs-target="#accountModal">
                        <!-- Icon -->
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M17.2252 3.0777C15.3376 1.10738 12.7258 -0.0045765 9.99712 0.000444175C4.48284 -0.00650109 0.00695317 4.45809 7.91636e-06 9.97242C-0.00342287 12.6991 1.1084 15.3085 3.07726 17.1948C3.08299 17.2005 3.08512 17.209 3.09082 17.2141C3.14864 17.2698 3.21148 17.3169 3.27005 17.3705C3.43071 17.5133 3.59138 17.6611 3.76061 17.7989C3.85128 17.8703 3.94554 17.9417 4.03838 18.0074C4.19833 18.1266 4.35828 18.2459 4.52535 18.3558C4.6389 18.4273 4.756 18.4986 4.87236 18.5701C5.02658 18.6629 5.18012 18.7564 5.33936 18.8414C5.47434 18.9128 5.61211 18.9742 5.74922 19.0392C5.89917 19.1106 6.04698 19.182 6.20049 19.2462C6.354 19.3105 6.50826 19.3605 6.6639 19.4162C6.81954 19.4719 6.9538 19.5233 7.10304 19.569C7.27157 19.6197 7.44436 19.6589 7.61573 19.7011C7.75853 19.736 7.89706 19.776 8.04416 19.8046C8.24123 19.8439 8.44117 19.8689 8.64112 19.896C8.76467 19.9132 8.88534 19.9374 9.01027 19.9496C9.33732 19.9817 9.66718 19.9996 9.99992 19.9996C10.3327 19.9996 10.6626 19.9817 10.9896 19.9496C11.1146 19.9374 11.2352 19.9132 11.3587 19.896C11.5587 19.8689 11.7586 19.8439 11.9557 19.8046C12.0985 19.776 12.2413 19.7332 12.3841 19.7011C12.5555 19.6589 12.7283 19.6196 12.8968 19.569C13.046 19.5233 13.1903 19.4676 13.3359 19.4162C13.4816 19.3648 13.6473 19.3091 13.7994 19.2462C13.9514 19.1834 14.1007 19.1098 14.2506 19.0392C14.3877 18.9742 14.5256 18.9128 14.6605 18.8414C14.8197 18.7564 14.9732 18.6629 15.1275 18.5701C15.2439 18.4986 15.361 18.4337 15.4745 18.3558C15.6416 18.2459 15.8016 18.1267 15.9615 18.0074C16.0543 17.936 16.1485 17.8717 16.2392 17.7989C16.4085 17.6632 16.5691 17.519 16.7298 17.3705C16.7883 17.3169 16.8512 17.2698 16.909 17.2141C16.9147 17.2091 16.9169 17.2005 16.9226 17.1948C20.9046 13.38 21.04 7.05955 17.2252 3.0777ZM15.6203 16.4472C15.4904 16.5614 15.3561 16.6699 15.2205 16.7749C15.1405 16.8363 15.0605 16.897 14.9784 16.9556C14.8491 17.0491 14.7178 17.1377 14.5842 17.2226C14.4871 17.2848 14.3879 17.3447 14.2879 17.4033C14.1622 17.4747 14.0344 17.5461 13.9051 17.6175C13.7909 17.676 13.6745 17.7311 13.5574 17.7853C13.4403 17.8396 13.3111 17.8974 13.1847 17.9481C13.0583 17.9988 12.924 18.0467 12.7919 18.0909C12.6713 18.1323 12.5506 18.1752 12.4285 18.2116C12.2857 18.2544 12.1364 18.2894 11.9886 18.3251C11.8729 18.3522 11.7587 18.383 11.6416 18.4058C11.4724 18.4387 11.2996 18.4615 11.1261 18.4851C11.0275 18.4979 10.9297 18.5158 10.8304 18.5258C10.5562 18.5522 10.2784 18.5679 9.99783 18.5679C9.71722 18.5679 9.43945 18.5522 9.16524 18.5258C9.066 18.5158 8.96818 18.4979 8.8696 18.4851C8.6961 18.4615 8.5233 18.4387 8.35406 18.4058C8.23696 18.383 8.1227 18.3523 8.00705 18.3251C7.85924 18.2894 7.71213 18.2537 7.5672 18.2116C7.44512 18.1752 7.32441 18.1323 7.20375 18.0909C7.07166 18.0452 6.93953 17.9988 6.811 17.9481C6.68248 17.8974 6.5611 17.8417 6.43826 17.7853C6.31542 17.7289 6.20476 17.6761 6.09054 17.6175C5.9613 17.5504 5.83348 17.4797 5.7078 17.4033C5.60784 17.3448 5.50856 17.2848 5.41145 17.2226C5.27794 17.1377 5.14653 17.0491 5.01729 16.9556C4.93516 16.897 4.8552 16.8363 4.77521 16.7749C4.63952 16.6699 4.5053 16.5607 4.37535 16.4472C4.34393 16.4236 4.31536 16.3936 4.28469 16.3664C4.31661 13.9374 5.87708 11.7926 8.17843 11.0146C9.32912 11.562 10.6651 11.562 11.8158 11.0146C14.1171 11.7926 15.6776 13.9374 15.7096 16.3664C15.6796 16.3936 15.651 16.4208 15.6203 16.4472ZM7.50716 5.7256C8.2803 4.3506 10.0217 3.86272 11.3967 4.63586C12.7717 5.409 13.2596 7.15038 12.4864 8.52538C12.2299 8.98159 11.8529 9.35856 11.3967 9.61511C11.3931 9.61511 11.3888 9.61511 11.3845 9.61938C11.1952 9.72477 10.9951 9.80954 10.7876 9.87217C10.7505 9.88288 10.7162 9.89715 10.6769 9.90644C10.6055 9.92501 10.5305 9.93786 10.457 9.9507C10.3185 9.97493 10.1784 9.98898 10.0378 9.99283H9.95641C9.81588 9.98898 9.67576 9.97493 9.53727 9.9507C9.46585 9.93786 9.39016 9.92501 9.31736 9.90644C9.2795 9.89715 9.24594 9.88288 9.2067 9.87217C8.99922 9.80954 8.79911 9.72481 8.60974 9.61938L8.5969 9.61511C7.2219 8.84197 6.73402 7.10059 7.50716 5.7256ZM16.9763 14.9505C16.518 12.8133 15.1107 11.0014 13.1532 10.0286C14.7534 8.28555 14.6375 5.57535 12.8944 3.97522C11.1514 2.3751 8.44117 2.49099 6.84104 4.23404C5.33677 5.8727 5.33677 8.38998 6.84104 10.0286C4.88361 11.0014 3.47624 12.8133 3.01802 14.9505C0.27991 11.0937 1.18681 5.74744 5.04365 3.00933C8.90048 0.271226 14.2467 1.17813 16.9848 5.03496C18.0141 6.48481 18.5666 8.21907 18.5658 9.99714C18.5658 11.7737 18.01 13.5057 16.9763 14.9505Z" fill="currentColor"/>
                        </svg>

                    </a>
                </li>

                <li class="nav-item border-0 px-0">
                    <!-- Button trigger cart modal -->
                    <a href="#" class="nav-link d-flex px-3 px-md-4 position-relative text-secondary icon-xs" data-bs-toggle="modal" data-bs-target="#cartModal">
                        <span class="badge badge-primary rounded-circle fw-bold badge-float mt-n1 ms-n2 px-0 w-16" style="font-size: 8px;">2</span>
                        <!-- Icon -->
                        <svg width="13" height="15" viewBox="0 0 13 15" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.2422 3.51562H10.4567C10.2239 1.53873 8.53839 0 6.5 0C4.46161 0 2.7761 1.53873 2.54334 3.51562H0.757812C0.434199 3.51562 0.171875 3.77795 0.171875 4.10156V14.4141C0.171875 14.7377 0.434199 15 0.757812 15H12.2422C12.5658 15 12.8281 14.7377 12.8281 14.4141V4.10156C12.8281 3.77795 12.5658 3.51562 12.2422 3.51562ZM6.5 1.17188C7.89113 1.17188 9.04939 2.18716 9.27321 3.51562H3.72679C3.95062 2.18716 5.10887 1.17188 6.5 1.17188ZM11.6562 13.8281H1.34375V4.6875H2.51562V6.44531C2.51562 6.76893 2.77795 7.03125 3.10156 7.03125C3.42518 7.03125 3.6875 6.76893 3.6875 6.44531V4.6875H9.3125V6.44531C9.3125 6.76893 9.57482 7.03125 9.89844 7.03125C10.2221 7.03125 10.4844 6.76893 10.4844 6.44531V4.6875H11.6562V13.8281Z" fill="currentColor"/>
                        </svg>

                    </a>
                </li>
            </ul>

            <!-- Toggler -->
            <button class="navbar-toggler ms-4 ms-md-5 shadow-none bg-teal text-white icon-xs p-0 outline-0 h-40p w-40p d-flex d-xl-none place-flex-center" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <!-- Icon -->
                <svg width="25" height="17" viewBox="0 0 25 17" xmlns="http://www.w3.org/2000/svg">
                    <rect width="25" height="1" fill="currentColor"/>
                    <rect y="8" width="15" height="1" fill="currentColor"/>
                    <rect y="16" width="20" height="1" fill="currentColor"/>
                </svg>

            </button>
        </div>
    </header>


    <!-- BREADCRUMBS
    ================================================== -->
    <div class="container">
        <nav class="mb-5 mb-md-8 mt-2" aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-scroll">
                <li class="breadcrumb-item">
                    <a class="text-gray-800" href="#">
                        Home
                    </a>
                </li>
                <li class="breadcrumb-item">
                    <a class="text-gray-800" href="#">
                        Courses List
                    </a>
                </li>
                <li class="breadcrumb-item text-gray-800 active" aria-current="page">
                    Courses Single
                </li>
            </ol>
        </nav>
    </div>

    <!-- COURSE
    ================================================== -->
    <div class="container">
        <div class="row mb-8">
            <div class="col-lg-8 mb-6 mb-lg-0 position-relative">
                <h1 class="me-xl-14">
                    Learn Figma: User Interface Design Essentials - UI/UX Design
                </h1>
                <p class="me-xl-13 mb-5">Master Figma app to get a job in UI Design, User Interface, User Experience design, Web Design & UX design.</p>

                <a href="#" class="badge badge-lg badge-rounded-circle badge-secondary font-size-base badge-float badge-float-inside top-0 text-white">
                    <i class="far fa-heart"></i>
                </a>

                <!-- COURSE META
                ================================================== -->
                <div class="d-md-flex align-items-center mb-5">
                    <div class="border rounded-circle d-inline-block mb-4 mb-md-0 me-md-6 me-lg-4 me-xl-6">
                        <div class="p-2">
                            <img src="assets/img/avatars/avatar-1.jpg" alt="..." class="rounded-circle" width="68" height="68">
                        </div>
                    </div>

                    <div class="mb-4 mb-md-0 me-md-8 me-lg-4 me-xl-8">
                        <h6 class="mb-0">Created by</h6>
                        <a href="#" class="font-size-sm text-gray-800">Alison Dawn</a>
                    </div>

                    <div class="mb-4 mb-md-0 me-md-8 me-lg-4 me-xl-8">
                        <h6 class="mb-0">Categories</h6>
                        <a href="#" class="font-size-sm text-gray-800">Design</a>
                    </div>

                    <div class="mb-4 mb-md-0 me-md-6 me-lg-4 me-xl-6">
                        <h6 class="mb-0">Review</h6>
                        <div class="d-lg-flex align-items-center">
                            <div class="star-rating mb-2 mb-lg-0">
                                <div class="rating" style="width:100%;"></div>
                            </div>

                            <div class="font-size-sm ms-lg-3">
                                <span>9.45 (9.8k+ reviews)</span>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="https://www.youtube.com/watch?v=9I-Y6VQ6tyI" class="d-block sk-thumbnail rounded mb-6" data-fancybox>
                    <div class="h-90p w-90p rounded-circle bg-white size-30-all d-inline-flex align-items-center justify-content-center position-absolute center z-index-1">
                        <!-- Icon -->
                        <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                        </svg>

                    </div>
                    <img class="rounded shadow-light-lg" src="assets/img/products/product-2.jpg" alt="...">
                </a>

                <!-- COURSE INFO TAB
                ================================================== -->
                <div class="border rounded shadow p-3 mb-6">
                    <ul id="pills-tab" class="nav nav-pills course-tab-v2 h5 mb-0 flex-nowrap overflow-auto" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-overview-tab" data-bs-toggle="pill" href="#pills-overview" role="tab" aria-controls="pills-overview" aria-selected="true">Overview</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-curriculum-tab" data-bs-toggle="pill" href="#pills-curriculum" role="tab" aria-controls="pills-curriculum" aria-selected="false">Curriculum</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-instructor-tab" data-bs-toggle="pill" href="#pills-instructor" role="tab" aria-controls="pills-instructor" aria-selected="false">Curriculum</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-reviews-tab" data-bs-toggle="pill" href="#pills-reviews" role="tab" aria-controls="pills-reviews" aria-selected="false">Reviews</a>
                        </li>
                    </ul>
                </div>

                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-overview" role="tabpanel" aria-labelledby="pills-overview-tab">
                        <h3 class="">Course Description</h3>
                        <p class="mb-6 line-height-md">Do you want to become a UI/UX designer but you don't know where to start? This course will allow you to develop your user interface design skills and you can add UI designer to your CV and start getting clients for your skills.</p>
                        <p class="mb-6 line-height-md">Hi everyone. I'm Arash and I'm a UI/UX designer. In this course, I will help you learn and master Figma app comprehensively from scratch. Figma is an innovative and brilliant tool for User Interface design. It's used by everyone from entrepreneurs and start-ups to Apple, Airbnb, Facebook, etc.</p>
                        <p class="collapse mb-6 line-height-md" id="readcollapseExample">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente  I will help you learn and master Figma app comprehensively from scratch. Figma is an innovative and brilliant tool for User Interface design. It's used by everyone from entrepreneurs ea proident.</p>
                        <a class="text-teal read-more h6 d-inline-block mb-8" data-bs-toggle="collapse" href="#readcollapseExample" role="button" aria-expanded="false" aria-controls="readcollapseExample">
                            <span class="d-inline-flex align-items-center more">
                                Read More
                                <span class="d-flex align-items-center justify-content-center bg-teal rounded-circle ms-2 p-2 w-26p">
                                    <i class="fas fa-plus font-size-10 text-white"></i>
                                </span>
                            </span>
                            <span class="d-inline-flex align-items-center less">
                                Read Less
                                <span class="d-flex align-items-center justify-content-center bg-teal rounded-circle ms-2 p-2 w-26p">
                                    <i class="fas fa-minus font-size-10 text-white"></i>
                                </span>
                            </span>
                        </a>

                        <h3 class="mb-5">What you'll learn</h3>
                        <div class="row row-cols-lg-2 mb-8">
                            <div class="col-md">
                                <ul class="list-style-v1 list-unstyled">
                                    <li>Become a UI/UX designer.</li>
                                    <li>You will be able to start earning money skills.</li>
                                    <li>Build a UI project from beginning to end.</li>
                                    <li>Work with colors & fonts.</li>
                                    <li>You will create your own UI Kit.</li>
                                </ul>
                            </div>

                            <div class="col-md">
                                <ul class="list-style-v1 list-unstyled ms-xl-6">
                                    <li>Build & test a complete mobile app.</li>
                                    <li>Learn to design mobile apps & websites.</li>
                                    <li>Design 3 different logos.</li>
                                    <li>Create low-fidelity wireframe.</li>
                                    <li>Downloadable exercise files.</li>
                                </ul>
                            </div>
                        </div>

                        <h3 class="mb-5">Requirements</h3>
                        <ul class="list-style-v2 list-unstyled">
                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>
                            <li>A computer with a good internet connection.</li>
                            <li>Adobe Photoshop (OPTIONAL)</li>
                        </ul>
                    </div>

                    <div class="tab-pane fade" id="pills-curriculum" role="tabpanel" aria-labelledby="pills-curriculum-tab">
                        <div id="accordionCurriculum">
                            <div class="border rounded shadow mb-6 overflow-hidden">
                                <div class="d-flex align-items-center" id="curriculumheadingOne">
                                    <h5 class="mb-0 w-100">
                                        <button class="d-flex align-items-center p-5 min-height-80 text-dark fw-medium collapse-accordion-toggle line-height-one" type="button" data-bs-toggle="collapse" data-bs-target="#CurriculumcollapseOne" aria-expanded="true" aria-controls="CurriculumcollapseOne">
                                            <span class="me-4 text-dark d-flex">
                                                <!-- Icon -->
                                                <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="15" height="2" fill="currentColor"/>
                                                </svg>

                                                <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                                    <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                                </svg>

                                            </span>

                                            Introduction
                                        </button>
                                    </h5>
                                </div>

                                <div id="CurriculumcollapseOne" class="collapse show" aria-labelledby="curriculumheadingOne" data-parent="#accordionCurriculum">
                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Introduction to the course
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">3 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Introduction
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Structure of the course
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Required Tools
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>

                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Get Your Free E-book
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">3 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="border rounded shadow mb-6 overflow-hidden">
                                <div class="d-flex align-items-center" id="curriculumheadingTwo">
                                    <h5 class="mb-0 w-100">
                                        <button class="d-flex align-items-center p-5 min-height-80 text-dark fw-medium collapse-accordion-toggle line-height-one" type="button" data-bs-toggle="collapse" data-bs-target="#CurriculumcollapseTwo" aria-expanded="true" aria-controls="CurriculumcollapseTwo">
                                            <span class="me-4 text-dark d-flex">
                                                <!-- Icon -->
                                                <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="15" height="2" fill="currentColor"/>
                                                </svg>

                                                <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                                    <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                                </svg>

                                            </span>

                                            Design Basics
                                        </button>
                                    </h5>
                                </div>

                                <div id="CurriculumcollapseTwo" class="collapse show" aria-labelledby="curriculumheadingTwo" data-parent="#accordionCurriculum">
                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Intro to Design Basics
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Layout
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">5 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">45 min</div>
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Visual hierarchy
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <button class="btn btn-sm btn-blue-soft me-5 font-size-sm fw-normal py-1">30 min</button>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Visual noise
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">5 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">45 min</div>

                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Iconography
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Typography
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="border rounded shadow mb-6 overflow-hidden">
                                <div class="d-flex align-items-center" id="curriculumheadingThree">
                                    <h5 class="mb-0 w-100">
                                        <button class="d-flex align-items-center p-5 min-height-80 text-dark fw-medium collapse-accordion-toggle line-height-one" type="button" data-bs-toggle="collapse" data-bs-target="#CurriculumcollapseThree" aria-expanded="false" aria-controls="CurriculumcollapseThree">
                                            <span class="me-4 text-dark d-flex">
                                                <!-- Icon -->
                                                <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="15" height="2" fill="currentColor"/>
                                                </svg>

                                                <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                                    <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                                </svg>

                                            </span>

                                            Figma Academy
                                        </button>
                                    </h5>
                                </div>

                                <div id="CurriculumcollapseThree" class="collapse" aria-labelledby="curriculumheadingThree" data-parent="#accordionCurriculum">
                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Introduction to the course
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">3 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Introduction
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Structure of the course
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Required Tools
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>

                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Get Your Free E-book
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">3 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="border rounded shadow mb-6 overflow-hidden">
                                <div class="d-flex align-items-center" id="curriculumheadingFour">
                                    <h5 class="mb-0 w-100">
                                        <button class="d-flex align-items-center p-5 min-height-80 text-dark fw-medium collapse-accordion-toggle line-height-one" type="button" data-bs-toggle="collapse" data-bs-target="#CurriculumcollapseFour" aria-expanded="false" aria-controls="CurriculumcollapseFour">
                                            <span class="me-4 text-dark d-flex">
                                                <!-- Icon -->
                                                <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="15" height="2" fill="currentColor"/>
                                                </svg>

                                                <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                                    <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                                </svg>

                                            </span>

                                            UI Elements
                                        </button>
                                    </h5>
                                </div>

                                <div id="CurriculumcollapseFour" class="collapse" aria-labelledby="curriculumheadingFour" data-parent="#accordionCurriculum">
                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Intro to Design Basics
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Layout
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">5 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">45 min</div>
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Visual hierarchy
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">30 min</div>
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Visual noise
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="me-5 font-size-sm">12 lectures</div>
                                            <div class="badge text-dark-70 bg-orange-40 me-5 font-size-sm fw-normal py-2">5 question</div>
                                            <div class="badge btn-blue-soft me-5 font-size-sm fw-normal py-2">45 min</div>

                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.5717 0H4.16956C4.05379 0.00594643 3.94322 0.0496071 3.85456 0.124286L0.413131 3.57857C0.328167 3.65957 0.280113 3.77191 0.280274 3.88929V16.8514C0.281452 17.4853 0.794988 17.9988 1.42885 18H12.5717C13.1981 17.9989 13.7086 17.497 13.7203 16.8707V1.14857C13.7191 0.514714 13.2056 0.00117857 12.5717 0ZM8.18099 0.857143H10.6988V4.87714L9.80527 3.45214C9.76906 3.39182 9.71859 3.3413 9.65827 3.30514C9.45529 3.18337 9.19204 3.24916 9.07027 3.45214L8.18099 4.87071V0.857143ZM3.7367 1.46786V2.66143C3.73552 3.10002 3.38029 3.45525 2.9417 3.45643H1.74813L3.7367 1.46786ZM12.8546 16.86C12.8534 17.0157 12.7274 17.1417 12.5717 17.1429H1.42885C1.42665 17.1429 1.42445 17.143 1.42226 17.143C1.26486 17.1441 1.13635 17.0174 1.13527 16.86V4.32214H2.9417C3.85793 4.31979 4.60006 3.57766 4.60242 2.66143V0.857143H7.31527V5.23286C7.31345 5.42593 7.37688 5.61391 7.49527 5.76643C7.67533 5.99539 7.98036 6.08561 8.25599 5.99143L8.28813 5.98071C8.49272 5.89484 8.66356 5.7443 8.77456 5.55214L9.44099 4.48071L10.1074 5.55214C10.2184 5.7443 10.3893 5.89484 10.5938 5.98071C10.8764 6.0922 11.1987 6.00509 11.3867 5.76643C11.5051 5.61391 11.5685 5.42593 11.5667 5.23286V0.857143H12.5717C12.7266 0.858268 12.8523 0.982982 12.8546 1.13786V16.86Z" fill="currentColor"/>
                                                    <path d="M10.7761 14.3143H3.22252C2.98584 14.3143 2.79395 14.5062 2.79395 14.7429C2.79395 14.9796 2.98584 15.1715 3.22252 15.1715H10.7761C11.0128 15.1715 11.2047 14.9796 11.2047 14.7429C11.2047 14.5062 11.0128 14.3143 10.7761 14.3143Z" fill="currentColor"/>
                                                    <path d="M10.7761 12.2035H3.22252C2.98584 12.2035 2.79395 12.3954 2.79395 12.6321C2.79395 12.8687 2.98584 13.0606 3.22252 13.0606H10.7761C11.0128 13.0606 11.2047 12.8687 11.2047 12.6321C11.2047 12.3954 11.0128 12.2035 10.7761 12.2035Z" fill="currentColor"/>
                                                    <path d="M10.7761 10.0928H3.22252C2.98584 10.0928 2.79395 10.2847 2.79395 10.5213C2.79395 10.758 2.98584 10.9499 3.22252 10.9499H10.7761C11.0128 10.9499 11.2047 10.758 11.2047 10.5213C11.2047 10.2847 11.0128 10.0928 10.7761 10.0928Z" fill="currentColor"/>
                                                    <path d="M10.7761 7.98218H3.22252C2.98584 7.98218 2.79395 8.17407 2.79395 8.41075C2.79395 8.64743 2.98584 8.83932 3.22252 8.83932H10.7761C11.0128 8.83932 11.2047 8.64743 11.2047 8.41075C11.2047 8.17407 11.0128 7.98218 10.7761 7.98218Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Iconography
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <a href="#" class="text-secondary">
                                                <!-- Icon -->
                                                <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                                </svg>

                                            </a>
                                        </div>
                                    </div>

                                    <div class="border-top px-5 py-4 min-height-70 d-md-flex align-items-center bg-gray-100">
                                        <div class="d-flex align-items-center me-auto mb-4 mb-md-0">
                                            <div class="text-secondary d-flex">
                                                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                                    <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                                </svg>

                                            </div>

                                            <div class="ms-4">
                                                Typography
                                            </div>
                                        </div>

                                        <div class="d-flex align-items-center overflow-auto overflow-md-visible flex-shrink-all">
                                            <div class="text-secondary d-flex">
                                                <!-- Icon -->
                                                <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15.625 7.34375H7.3423V4.13164C7.3423 2.715 8.53391 1.5625 9.99855 1.5625C11.4632 1.5625 12.6548 2.715 12.6548 4.13164V5.625H14.2173V4.13164C14.2173 1.85344 12.3248 0 9.99855 0C7.67234 0 5.7798 1.85344 5.7798 4.13164V7.34375H4.375C3.08266 7.34375 2.03125 8.39516 2.03125 9.6875V17.6562C2.03125 18.9486 3.08266 20 4.375 20H15.625C16.9173 20 17.9688 18.9486 17.9688 17.6562V9.6875C17.9688 8.39516 16.9173 7.34375 15.625 7.34375ZM16.4062 17.6562C16.4062 18.087 16.0558 18.4375 15.625 18.4375H4.375C3.94422 18.4375 3.59375 18.087 3.59375 17.6562V9.6875C3.59375 9.25672 3.94422 8.90625 4.375 8.90625H15.625C16.0558 8.90625 16.4062 9.25672 16.4062 9.6875V17.6562Z" fill="currentColor"/>
                                                    <path d="M10 11.1719C9.20176 11.1719 8.55469 11.8189 8.55469 12.6172C8.55469 13.1269 8.81875 13.5746 9.2173 13.832V15.5469C9.2173 15.9783 9.56707 16.3281 9.99855 16.3281C10.43 16.3281 10.7798 15.9783 10.7798 15.5469V13.8338C11.18 13.5768 11.4453 13.1281 11.4453 12.6172C11.4453 11.8189 10.7982 11.1719 10 11.1719Z" fill="currentColor"/>
                                                </svg>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="pills-instructor" role="tabpanel" aria-labelledby="pills-instructor-tab">
                        <h3 class="mb-6">About the instructor</h3>

                        <div class="d-flex align-items-center mb-6">
                            <div class="d-inline-block rounded-circle border me-6 p-2">
                                <div class="avatar avatar-size-120">
                                    <img src="assets/img/avatars/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
                                </div>
                            </div>
                            <div class="media-body">
                                <h4 class="mb-0">Lauren Handerson</h4>
                                <span>iOS Developer & UI Designer</span>
                            </div>
                        </div>

                        <div class="row mx-xl-n5 mb-6">
                            <div class="col-12 col-md-auto mb-3 mb-md-0 px-xl-5">
                                <div class="d-flex align-items-center">
                                    <div class="me-3 d-flex text-secondary icon-uxs">
                                        <!-- Icon -->
                                        <svg width="16px" height="16px" viewBox="0 -10 511.98685 511"  xmlns="http://www.w3.org/2000/svg">
                                            <path fill="currentColor" d="m114.59375 491.140625c-5.609375 0-11.179688-1.75-15.933594-5.1875-8.855468-6.417969-12.992187-17.449219-10.582031-28.09375l32.9375-145.089844-111.703125-97.960937c-8.210938-7.167969-11.347656-18.519532-7.976562-28.90625 3.371093-10.367188 12.542968-17.707032 23.402343-18.710938l147.796875-13.417968 58.433594-136.746094c4.308594-10.046875 14.121094-16.535156 25.023438-16.535156 10.902343 0 20.714843 6.488281 25.023437 16.511718l58.433594 136.769532 147.773437 13.417968c10.882813.980469 20.054688 8.34375 23.425782 18.710938 3.371093 10.367187.253906 21.738281-7.957032 28.90625l-111.703125 97.941406 32.9375 145.085938c2.414063 10.667968-1.726562 21.699218-10.578125 28.097656-8.832031 6.398437-20.609375 6.890625-29.910156 1.300781l-127.445312-76.160156-127.445313 76.203125c-4.308594 2.558594-9.109375 3.863281-13.953125 3.863281zm141.398438-112.875c4.84375 0 9.640624 1.300781 13.953124 3.859375l120.277344 71.9375-31.085937-136.941406c-2.21875-9.746094 1.089843-19.921875 8.621093-26.515625l105.472657-92.5-139.542969-12.671875c-10.046875-.917969-18.6875-7.234375-22.613281-16.492188l-55.082031-129.046875-55.148438 129.066407c-3.882812 9.195312-12.523438 15.511718-22.546875 16.429687l-139.5625 12.671875 105.46875 92.5c7.554687 6.613281 10.859375 16.769531 8.621094 26.539062l-31.0625 136.9375 120.277343-71.914062c4.308594-2.558594 9.109376-3.859375 13.953126-3.859375zm-84.585938-221.847656s0 .023437-.023438.042969zm169.128906-.0625.023438.042969c0-.023438 0-.023438-.023438-.042969zm0 0"/>
                                        </svg>

                                    </div>
                                    4.87 Instructor rating
                                </div>
                            </div>

                            <div class="col-12 col-md-auto mb-3 mb-md-0 px-xl-5">
                                <div class="d-flex align-items-center">
                                    <div class="me-3 d-flex text-secondary icon-uxs">
                                        <!-- Icon -->
                                        <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M9.96092 7.89061C10.3924 7.89061 10.7422 8.24034 10.7422 8.67186C10.7422 9.10338 10.3924 9.45311 9.96092 9.45311C9.5294 9.45311 9.17967 9.10338 9.17967 8.67186C9.17967 8.24034 9.5294 7.89061 9.96092 7.89061ZM12.6953 8.67186C12.6953 9.10338 13.045 9.45311 13.4765 9.45311C13.9081 9.45311 14.2578 9.10338 14.2578 8.67186C14.2578 8.24034 13.9081 7.89061 13.4765 7.89061C13.045 7.89061 12.6953 8.24034 12.6953 8.67186ZM5.66405 8.67186C5.66405 9.10338 6.01378 9.45311 6.4453 9.45311C6.87682 9.45311 7.22655 9.10338 7.22655 8.67186C7.22655 8.24034 6.87682 7.89061 6.4453 7.89061C6.01378 7.89061 5.66405 8.24034 5.66405 8.67186ZM19.313 15.9985C20.2273 16.9128 20.2273 18.3996 19.3135 19.3135C18.8566 19.7703 18.2563 19.9989 17.6562 19.9989C17.0561 19.9989 16.4558 19.7703 15.999 19.3135L11.7103 15.0345C11.6192 14.9435 11.5521 14.8317 11.5147 14.7084L10.5806 11.6333C10.4977 11.3606 10.5699 11.0646 10.7689 10.8606C10.9678 10.6567 11.262 10.5774 11.5367 10.6534L14.6899 11.5268C14.8198 11.5628 14.938 11.6316 15.0334 11.7268L19.313 15.9985ZM12.9527 14.0667L15.8468 16.9545L16.9519 15.8494L14.0748 12.9779L12.4885 12.5384L12.9527 14.0667ZM18.2086 17.1038L18.0578 16.9532L16.9529 18.0581L17.1032 18.208C17.4084 18.5133 17.904 18.5133 18.2086 18.2086C18.5133 17.904 18.5133 17.4084 18.2086 17.1038ZM10.4346 16.1895C10.2902 16.1958 10.144 16.199 9.99998 16.199C8.74373 16.199 7.53432 15.9651 6.40547 15.5038C6.21321 15.4254 5.99746 15.4266 5.80611 15.5073L2.24884 17.0089L3.44741 14.1697C3.5646 13.8922 3.51165 13.5718 3.31115 13.3465C2.1672 12.0614 1.5625 10.5238 1.5625 8.90028C1.5625 4.85427 5.34759 1.5625 9.99998 1.5625C14.6524 1.5625 18.4375 4.85427 18.4375 8.90028C18.4375 9.85975 18.2019 10.823 17.7371 11.7631C17.5459 12.1499 17.7044 12.6185 18.0912 12.8097C18.4781 13.0009 18.9466 12.8424 19.1378 12.4556C19.7099 11.2982 20 10.1021 20 8.90028C20 3.99261 15.514 0 9.99998 0C4.48608 0 0 3.99261 0 8.90028C0 10.7527 0.628051 12.507 1.82174 14.0031L0.0614928 18.1727C-0.0621032 18.4655 0.00411988 18.8041 0.228881 19.0289C0.378417 19.1784 0.578154 19.2578 0.781401 19.2578C0.883787 19.2578 0.987089 19.2376 1.08505 19.1963L6.12136 17.0703C7.34969 17.5291 8.65294 17.7615 9.99998 17.7615C10.1666 17.7615 10.3358 17.7577 10.5029 17.7505C10.934 17.7316 11.2681 17.3669 11.2492 16.9359C11.2304 16.5048 10.865 16.1696 10.4346 16.1895Z" fill="currentColor"/>
                                        </svg>

                                    </div>
                                    1,533 reviews
                                </div>
                            </div>

                            <div class="col-12 col-md-auto mb-3 mb-md-0 px-xl-5">
                                <div class="d-flex align-items-center">
                                    <div class="me-3 d-flex text-secondary icon-uxs">
                                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                        </svg>

                                    </div>
                                    23,912 students
                                </div>
                            </div>

                            <div class="col-12 col-md-auto mb-3 mb-md-0 px-xl-5">
                                <div class="d-flex align-items-center">
                                    <div class="me-3 d-flex text-secondary icon-uxs">
                                        <!-- Icon -->
                                        <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                                        </svg>

                                    </div>
                                    29 courses
                                </div>
                            </div>
                        </div>

                        <p class="mb-6 line-height-md">I am a UI/UX designer and an iOS developer with having almost six years of experience in application development and also ten years of graphic design and User Interface design.</p>
                        <p class="mb-6 line-height-md">My passion is helping people to learn new skills in a short-term course and achieve their goals. I've been designing for more than ten years and developing iOS apps for four years. It's my honor if I could help you learn to program in a simple word. I currently am teaching iOS 13, Swift 5, ARKit 3, Sketch 5, Illustrator, Photoshop, Cinema 4D, HTML, CSS, JavaScript, etc.</p>
                    </div>

                    <div class="tab-pane fade" id="pills-reviews" role="tabpanel" aria-labelledby="pills-reviews-tab">
                        <h3 class="mb-6">Student feedback</h3>
                        <div class="row align-items-center mb-8">
                            <div class="col-md-auto mb-5 mb-md-0">
                                <div class="border rounded shadow d-flex align-items-center justify-content-center px-9 py-8">
                                    <div class="m-2 text-center">
                                        <h1 class="display-2 mb-0 fw-medium mb-n1">4.93</h1>
                                        <h5 class="mb-0">Course rating</h5>
                                        <div class="star-rating">
                                            <div class="rating" style="width:100%;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md">
                                <div class="d-md-flex align-items-center my-3 my-md-4">
                                    <div class="bg-gray-200 position-relative rounded-pill flex-grow-1 me-md-5 mb-2 mb-md-0 mw-md-260p" style="height: 10px;">
                                        <div class="bg-teal rounded-pill position-absolute top-0 left-0 bottom-0" style="width: 90%;"></div>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <div class="star-rating star-rating-lg secondary me-4">
                                            <div class="rating" style="width:90%;"></div>
                                        </div>
                                        <span>4132</span>
                                    </div>
                                </div>

                                <div class="d-md-flex align-items-center my-3 my-md-4">
                                    <div class="bg-gray-200 position-relative rounded-pill flex-grow-1 me-md-5 mb-2 mb-md-0 mw-md-260p" style="height: 10px;">
                                        <div class="bg-teal rounded-pill position-absolute top-0 left-0 bottom-0" style="width: 60%;"></div>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <div class="star-rating star-rating-lg secondary me-4">
                                            <div class="rating" style="width:60%;"></div>
                                        </div>
                                        <span>150</span>
                                    </div>
                                </div>

                                <div class="d-md-flex align-items-center my-3 my-md-4">
                                    <div class="bg-gray-200 position-relative rounded-pill flex-grow-1 me-md-5 mb-2 mb-md-0 mw-md-260p" style="height: 10px;">
                                        <div class="bg-teal rounded-pill position-absolute top-0 left-0 bottom-0" style="width: 50%;"></div>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <div class="star-rating star-rating-lg secondary me-4">
                                            <div class="rating" style="width:50%;"></div>
                                        </div>
                                        <span>50</span>
                                    </div>
                                </div>

                                <div class="d-md-flex align-items-center my-3 my-md-4">
                                    <div class="bg-gray-200 position-relative rounded-pill flex-grow-1 me-md-5 mb-2 mb-md-0 mw-md-260p" style="height: 10px;">
                                        <div class="bg-teal rounded-pill position-absolute top-0 left-0 bottom-0" style="width: 35%;"></div>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <div class="star-rating star-rating-lg secondary me-4">
                                            <div class="rating" style="width:35%;"></div>
                                        </div>
                                        <span>32</span>
                                    </div>
                                </div>

                                <div class="d-md-flex align-items-center my-3 my-md-4">
                                    <div class="bg-gray-200 position-relative rounded-pill flex-grow-1 me-md-5 mb-2 mb-md-0 mw-md-260p" style="height: 10px;">
                                        <div class="bg-teal rounded-pill position-absolute top-0 left-0 bottom-0" style="width: 15%;"></div>
                                    </div>

                                    <div class="d-flex align-items-center">
                                        <div class="star-rating star-rating-lg secondary me-4">
                                            <div class="rating" style="width:15%;"></div>
                                        </div>
                                        <span>1</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <ul class="list-unstyled pt-2">
                            <li class="media d-flex">
                                <div class="avatar avatar-xxl me-3 me-md-6 flex-shrink-0">
                                    <img src="assets/img/avatars/avatar-1.jpg" alt="..." class="avatar-img rounded-circle">
                                </div>
                                <div class="media-body flex-grow-1">
                                    <div class="d-md-flex align-items-center mb-5">
                                        <div class="me-auto mb-4 mb-md-0">
                                            <h5 class="mb-0">Oscar Cafeo</h5>
                                            <p class="font-size-sm font-italic">Beautiful courses</p>
                                        </div>
                                        <div class="star-rating">
                                            <div class="rating" style="width:100%;"></div>
                                        </div>
                                    </div>
                                    <p class="mb-6 line-height-md">This course was well organized and covered a lot more details than any other Figma courses. I really enjoy it. One suggestion is that it can be much better if we could complete the prototype together. Since we created 24 frames, I really want to test it on Figma mirror to see all the connections. Could you please let me take a look at the complete prototype?</p>
                                </div>
                            </li>
                            <li class="media d-flex">
                                <div class="avatar avatar-xxl me-3 me-md-6 flex-shrink-0">
                                    <img src="assets/img/avatars/avatar-2.jpg" alt="..." class="avatar-img rounded-circle">
                                </div>
                                <div class="media-body flex-grow-1">
                                    <div class="d-md-flex align-items-center mb-5">
                                        <div class="me-auto mb-4 mb-md-0">
                                            <h5 class="mb-0">Alex Morgan</h5>
                                            <p class="font-size-sm font-italic">Beautiful courses</p>
                                        </div>
                                        <div class="star-rating">
                                            <div class="rating" style="width:100%;"></div>
                                        </div>
                                    </div>
                                    <p class="mb-6 line-height-md">This course was well organized and covered a lot more details than any other Figma courses. I really enjoy it. One suggestion is that it can be much better if we could complete the prototype together. Since we created 24 frames, I really want to test it on Figma mirror to see all the connections. Could you please let me take a look at the complete prototype?</p>
                                </div>
                            </li>
                        </ul>

                        <div class="border shadow rounded p-6 p-md-9">
                            <h3 class="mb-2">Add Reviews & Rate</h3>
                            <div class="">What is it like to Course?</div>
                            <form>
                                <div class="clearfix">
                                    <fieldset class="slect-rating mb-3">
                                        <input type="radio" id="star5" name="rating" value="5" />
                                        <label class = "full" for="star5" title="Awesome - 5 stars"></label>

                                        <input type="radio" id="star4half" name="rating" value="4 and a half" />
                                        <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>

                                        <input type="radio" id="star4" name="rating" value="4" />
                                        <label class = "full" for="star4" title="Pretty good - 4 stars"></label>

                                        <input type="radio" id="star3half" name="rating" value="3 and a half" />
                                        <label class="half" for="star3half" title="Meh - 3.5 stars"></label>

                                        <input type="radio" id="star3" name="rating" value="3" />
                                        <label class = "full" for="star3" title="Meh - 3 stars"></label>

                                        <input type="radio" id="star2half" name="rating" value="2 and a half" />
                                        <label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>

                                        <input type="radio" id="star2" name="rating" value="2" />
                                        <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>

                                        <input type="radio" id="star1half" name="rating" value="1 and a half" />
                                        <label class="half" for="star1half" title="Meh - 1.5 stars"></label>

                                        <input type="radio" id="star1" name="rating" value="1" />
                                        <label class = "full" for="star1" title="Sucks big time - 1 star"></label>

                                        <input type="radio" id="starhalf" name="rating" value="half" />
                                        <label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                                    </fieldset>
                                </div>

                                <div class="form-group mb-6">
                                    <label for="exampleInputTitle1">Review Title</label>
                                    <input type="text" class="form-control placeholder-1" id="exampleInputTitle1" placeholder="Courses">
                                </div>

                                <div class="form-group mb-6">
                                    <label for="exampleFormControlTextarea1">Review Content</label>
                                    <textarea class="form-control placeholder-1" id="exampleFormControlTextarea1" rows="6" placeholder="Content"></textarea>
                                </div>

                                <button type="submit" class="btn btn-primary btn-block mw-md-300p">SUBMIT REVIEW</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <!-- SIDEBAR FILTER
                ================================================== -->
                <div class="d-block rounded border p-2 shadow mb-6">
                    <a href="https://www.youtube.com/watch?v=9I-Y6VQ6tyI" class="d-none sk-thumbnail rounded mb-1" data-fancybox>
                        <div class="h-60p w-60p rounded-circle bg-white size-20-all d-inline-flex align-items-center justify-content-center position-absolute center z-index-1">
                            <!-- Icon -->
                            <svg width="14" height="16" viewBox="0 0 14 16" xmlns="http://www.w3.org/2000/svg">
                                <path d="M12.8704 6.15374L3.42038 0.328572C2.73669 -0.0923355 1.9101 -0.109836 1.20919 0.281759C0.508282 0.673291 0.0898438 1.38645 0.0898438 2.18929V13.7866C0.0898438 15.0005 1.06797 15.9934 2.27016 16C2.27344 16 2.27672 16 2.27994 16C2.65563 16 3.04713 15.8822 3.41279 15.6591C3.70694 15.4796 3.79991 15.0957 3.62044 14.8016C3.44098 14.5074 3.05697 14.4144 2.76291 14.5939C2.59188 14.6982 2.42485 14.7522 2.27688 14.7522C1.82328 14.7497 1.33763 14.3611 1.33763 13.7866V2.18933C1.33763 1.84492 1.51713 1.53907 1.81775 1.3711C2.11841 1.20314 2.47294 1.21064 2.76585 1.39098L12.2159 7.21615C12.4999 7.39102 12.6625 7.68262 12.6618 8.01618C12.6611 8.34971 12.4974 8.64065 12.2118 8.81493L5.37935 12.9983C5.08548 13.1783 4.9931 13.5623 5.17304 13.8562C5.35295 14.1501 5.73704 14.2424 6.03092 14.0625L12.8625 9.87962C13.5166 9.48059 13.9081 8.78496 13.9096 8.01868C13.9112 7.25249 13.5226 6.55524 12.8704 6.15374Z" fill="currentColor"/>
                            </svg>

                        </div>
                        <img class="rounded shadow-light-lg" src="assets/img/products/product-2.jpg" alt="...">
                    </a>

                    <div class="pt-5 pb-4 px-5 px-lg-3 px-xl-5">
                        <div class="d-flex align-items-center mb-2">
                            <ins class="h2 mb-0">$89.99</ins>
                            <del class="ms-3">339.99</del>
                            <div class="badge badge-lg badge-purple text-white ms-auto fw-normal">91% Off</div>
                        </div>

                        <div class="d-flex align-items-center text-alizarin mb-6">
                            <!-- Icon -->
                            <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.99974 3.0083C5.79444 3.0083 2.37305 6.42973 2.37305 10.635C2.37305 14.8405 5.79448 18.2619 9.99974 18.2619C14.2053 18.2619 17.6264 14.8405 17.6264 10.635C17.6264 6.42973 14.205 3.0083 9.99974 3.0083ZM9.99974 16.8797C6.55666 16.8797 3.7555 14.0783 3.7555 10.6353C3.7555 7.19219 6.55662 4.39103 9.99974 4.39103C13.4428 4.39103 16.244 7.19219 16.244 10.6353C16.244 14.0785 13.4428 16.8797 9.99974 16.8797Z" fill="currentColor"/>
                                <path d="M12.1193 10.4048H10.2761V7.73202C10.2761 7.35022 9.9666 7.04077 9.5848 7.04077C9.20301 7.04077 8.89355 7.35022 8.89355 7.73202V11.0961C8.89355 11.4779 9.20301 11.7873 9.5848 11.7873H12.1194C12.5012 11.7873 12.8106 11.4779 12.8106 11.0961C12.8106 10.7143 12.5011 10.4048 12.1193 10.4048Z" fill="currentColor"/>
                                <path d="M6.08489 15.5823C5.80102 15.3267 5.36391 15.35 5.10864 15.6336L3.0349 17.9378C2.77935 18.2214 2.80263 18.6585 3.08627 18.9138C3.2183 19.033 3.38372 19.0915 3.54849 19.0915C3.73767 19.0915 3.92614 19.0143 4.06255 18.8625L6.13629 16.5583C6.3918 16.2746 6.36852 15.8375 6.08489 15.5823Z" fill="currentColor"/>
                                <path d="M16.9661 17.9381L14.8924 15.634C14.6375 15.3501 14.2002 15.327 13.9163 15.5826C13.6325 15.8379 13.6097 16.275 13.865 16.5586L15.9387 18.8628C16.0749 19.0144 16.2633 19.0916 16.4525 19.0916C16.6171 19.0916 16.7825 19.033 16.9147 18.9141C17.1986 18.6588 17.2214 18.2217 16.9661 17.9381Z" fill="currentColor"/>
                                <path d="M5.96733 1.91597C4.59382 0.571053 2.3798 0.573123 1.03211 1.92105C0.361569 2.59132 -0.00479631 3.47819 4.74212e-05 4.41826C0.00512553 5.34705 0.373327 6.21665 1.03715 6.86689C1.17172 6.99845 1.34614 7.06411 1.52078 7.06411C1.69774 7.06411 1.87469 6.99638 2.00949 6.86181L5.9726 2.8987C6.10303 2.76808 6.17584 2.59085 6.17491 2.40632C6.17401 2.22171 6.09932 2.04523 5.96733 1.91597ZM1.5966 5.31939C1.45813 5.04037 1.38414 4.73162 1.38254 4.41088C1.37953 3.84315 1.60211 3.30581 2.00949 2.89843C2.41594 2.49222 2.95328 2.28921 3.49359 2.28921C3.80949 2.28921 4.12655 2.35855 4.4187 2.49726L1.5966 5.31939Z" fill="currentColor"/>
                                <path d="M18.9673 1.92072C17.6194 0.573026 15.4053 0.570721 14.0318 1.91564C13.9 2.04489 13.8252 2.22142 13.8242 2.40595C13.8233 2.59052 13.8963 2.76794 14.0268 2.89833L17.9899 6.86144C18.1247 6.99648 18.3016 7.06398 18.4786 7.06398C18.6532 7.06398 18.8279 6.99831 18.9622 6.86628C19.6263 6.21628 19.9945 5.34672 19.9993 4.41789C20.0042 3.47809 19.6376 2.59122 18.9673 1.92072ZM18.4028 5.3193L15.5807 2.4972C16.3729 2.12114 17.3459 2.25458 17.9899 2.89856C18.3973 3.30594 18.6199 3.84301 18.6169 4.41102C18.6152 4.73152 18.5413 5.04051 18.4028 5.3193Z" fill="currentColor"/>
                            </svg>

                            <span class="ms-2">2 days left at this price!</span>
                        </div>

                        <button class="btn btn-primary btn-block mb-3" type="button" name="button">BUY NOW</button>
                        <button class="btn btn-orange btn-block mb-6" type="button" name="button">ENROLL</button>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.3164 4.20996C13.985 4.37028 13.8464 4.76904 14.0067 5.10026C14.4447 6.00505 14.6667 6.98031 14.6667 8C14.6667 11.6759 11.6759 14.6667 8 14.6667C4.32406 14.6667 1.33333 11.6759 1.33333 8C1.33333 4.32406 4.32406 1.33333 8 1.33333C9.52328 1.33333 10.9543 1.83073 12.1387 2.77165C12.4259 3.00098 12.846 2.95296 13.0754 2.66471C13.3047 2.37663 13.2567 1.95703 12.9683 1.72803C11.5661 0.613607 9.8016 0 8 0C3.58903 0 0 3.58903 0 8C0 12.411 3.58903 16 8 16C12.411 16 16 12.411 16 8C16 6.77767 15.7331 5.60628 15.2067 4.51969C15.0467 4.18766 14.6466 4.04932 14.3164 4.20996Z" fill="currentColor"/>
                                        <path d="M7.99967 2.66663C7.63167 2.66663 7.33301 2.96529 7.33301 3.33329V7.99996C7.33301 8.36796 7.63167 8.66663 7.99967 8.66663H11.333C11.701 8.66663 11.9997 8.36796 11.9997 7.99996C11.9997 7.63196 11.701 7.33329 11.333 7.33329H8.66634V3.33329C8.66634 2.96529 8.36768 2.66663 7.99967 2.66663Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Duration</h6>
                                <span>43 weeks</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M15.7262 1.94825C13.4059 0.396725 10.401 0.315126 8.00002 1.73839C5.59897 0.315126 2.59406 0.396725 0.273859 1.94825C0.102729 2.06241 -3.54271e-05 2.25456 6.30651e-07 2.46027V14.6553C-0.000323889 14.8826 0.124616 15.0914 0.324917 15.1987C0.525109 15.3058 0.768066 15.294 0.9569 15.168C2.98471 13.8111 5.63063 13.8111 7.65844 15.168C7.66645 15.1735 7.67568 15.1747 7.68368 15.1796C7.69169 15.1846 7.7003 15.1932 7.70953 15.1987C7.73102 15.2079 7.75302 15.2159 7.77538 15.2227C7.79773 15.2329 7.82077 15.2415 7.84428 15.2486C7.87828 15.2564 7.91286 15.2616 7.94766 15.264C7.96551 15.264 7.98213 15.2714 7.99998 15.2714C8.00492 15.2714 8.00982 15.2714 8.01538 15.2714C8.03604 15.2699 8.05655 15.2672 8.07693 15.2634C8.10808 15.2602 8.13895 15.2547 8.16923 15.2467C8.19018 15.2399 8.21074 15.2319 8.23078 15.2227C8.24986 15.2147 8.27016 15.2104 8.28862 15.2006C8.29724 15.1956 8.30402 15.1883 8.31264 15.1827C8.32125 15.1772 8.3311 15.1753 8.33971 15.1698C10.3675 13.8129 13.0134 13.8129 15.0413 15.1698C15.3233 15.3595 15.7057 15.2846 15.8953 15.0026C15.9643 14.9 16.0008 14.779 16 14.6554V2.46027C16 2.25456 15.8973 2.06241 15.7262 1.94825ZM7.38462 13.6036C5.43516 12.6896 3.18022 12.6896 1.23076 13.6036V2.79993C3.12732 1.67313 5.48806 1.67313 7.38462 2.79993V13.6036ZM14.7692 13.6036C12.8198 12.6896 10.5648 12.6896 8.61538 13.6036V2.79993C10.5119 1.67313 12.8727 1.67313 14.7692 2.79993V13.6036Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Lectures</h6>
                                <span>32</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Enrolled</h6>
                                <span>1982 students</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14.5936 3.78122H7.72003L6.56976 0.320872C6.50607 0.12928 6.32686 0 6.12495 0H1.40624C0.630839 0 0 0.630839 0 1.40624V10.8124C0 11.5878 0.630839 12.2187 1.40624 12.2187H6.57173L7.71263 15.6698C7.77566 15.8719 7.96259 16 8.1604 16C8.1615 16 8.16259 15.9999 8.16369 15.9999H14.5937C15.3691 15.9999 15.9999 15.369 15.9999 14.5936V5.18746C15.9999 4.41206 15.369 3.78122 14.5936 3.78122ZM1.40624 11.2812C1.14777 11.2812 0.937493 11.0709 0.937493 10.8124V1.40624C0.937493 1.14777 1.14777 0.937493 1.40624 0.937493H5.7868L9.22511 11.2812C7.46913 11.2812 3.14004 11.2812 1.40624 11.2812ZM9.14771 12.2187L8.22897 14.2449L7.55913 12.2187H9.14771ZM15.0624 14.5936C15.0624 14.8521 14.8521 15.0624 14.5936 15.0624H8.88768L10.3018 11.9435C10.3525 11.8316 10.3549 11.7077 10.3197 11.6018L8.03166 4.71871H14.5936C14.8521 4.71871 15.0624 4.92899 15.0624 5.18746V14.5936Z" fill="currentColor"/>
                                        <path d="M6.12497 5.65623H4.71873C4.45986 5.65623 4.24998 5.8661 4.24998 6.12497C4.24998 6.38385 4.45986 6.59372 4.71873 6.59372H5.5756C5.3821 7.13931 4.86107 7.53121 4.24998 7.53121C3.47458 7.53121 2.84374 6.90037 2.84374 6.12497C2.84374 5.34958 3.47458 4.71874 4.24998 4.71874C4.6256 4.71874 4.97873 4.86502 5.24435 5.13061C5.42738 5.31367 5.72419 5.31367 5.90725 5.13061C6.09028 4.94755 6.09028 4.65077 5.90725 4.46771C5.46457 4.02503 4.87601 3.78125 4.24998 3.78125C2.95765 3.78125 1.90625 4.83264 1.90625 6.12497C1.90625 7.4173 2.95765 8.4687 4.24998 8.4687C5.54232 8.4687 6.59371 7.4173 6.59371 6.12497C6.59371 5.8661 6.38384 5.65623 6.12497 5.65623Z" fill="currentColor"/>
                                        <path d="M13.625 7.53124H12.2187V7.0625C12.2187 6.80362 12.0089 6.59375 11.75 6.59375C11.4911 6.59375 11.2812 6.80362 11.2812 7.0625V7.53124H9.875C9.61612 7.53124 9.40625 7.74112 9.40625 7.99999C9.40625 8.25886 9.61612 8.46874 9.875 8.46874H12.5981C12.449 8.91201 12.1287 9.43735 11.7563 9.94291C11.6761 9.8346 11.5968 9.72376 11.5204 9.61138C11.3748 9.39729 11.0833 9.34176 10.8692 9.48735C10.6551 9.63291 10.5997 9.92447 10.7452 10.1386C10.8767 10.332 11.0146 10.5202 11.152 10.6985C10.9177 10.9702 10.6868 11.2163 10.4842 11.4154C10.2994 11.5967 10.2966 11.8935 10.4779 12.0783C10.6585 12.2623 10.9552 12.2666 11.1408 12.0846C11.157 12.0687 11.4126 11.8169 11.7541 11.4303C12.0873 11.8115 12.3367 12.0621 12.356 12.0814C12.539 12.2644 12.8357 12.2645 13.0188 12.0815C13.2019 11.8985 13.202 11.6017 13.019 11.4186C13.0141 11.4137 12.7271 11.1251 12.3609 10.698C13.0245 9.84029 13.429 9.09314 13.5691 8.46874H13.6249C13.8838 8.46874 14.0937 8.25886 14.0937 7.99999C14.0937 7.74112 13.8839 7.53124 13.625 7.53124Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Language</h6>
                                <span>English</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M15.4286 7.42841H6.20457C5.89469 6.21086 4.65646 5.47506 3.43888 5.78494C2.63143 5.99045 2.00093 6.62095 1.79541 7.42841H0.571439C0.255837 7.42841 0 7.68424 0 7.99985C0 8.31545 0.255837 8.57125 0.571439 8.57125H1.79545C2.10532 9.7888 3.34356 10.5246 4.56114 10.2147C5.36859 10.0092 5.99909 9.37871 6.20461 8.57125H15.4286C15.7442 8.57125 16 8.31542 16 7.99981C16 7.68421 15.7442 7.42841 15.4286 7.42841ZM4.00001 9.14269C3.36884 9.14269 2.85716 8.63102 2.85716 7.99985C2.85716 7.36868 3.36884 6.857 4.00001 6.857C4.63118 6.857 5.14285 7.36868 5.14285 7.99985C5.14285 8.63102 4.63118 9.14269 4.00001 9.14269Z" fill="currentColor"/>
                                        <path d="M15.4286 1.71405H13.6331C13.3233 0.496508 12.085 -0.239295 10.8675 0.0705817C10.06 0.276095 9.4295 0.906597 9.22399 1.71405H0.571439C0.255837 1.71405 0 1.96989 0 2.28549C0 2.60109 0.255837 2.85693 0.571439 2.85693H9.22399C9.53387 4.07447 10.7721 4.81028 11.9897 4.5004C12.7971 4.29489 13.4276 3.66438 13.6331 2.85693H15.4286C15.7442 2.85693 16 2.60109 16 2.28549C16 1.96989 15.7442 1.71405 15.4286 1.71405ZM11.4286 3.42834C10.7974 3.42834 10.2857 2.91666 10.2857 2.28549C10.2857 1.65432 10.7974 1.14265 11.4286 1.14265C12.0598 1.14265 12.5714 1.65432 12.5714 2.28549C12.5714 2.91666 12.0598 3.42834 11.4286 3.42834Z" fill="currentColor"/>
                                        <path d="M15.4286 13.1428H12.4903C12.1804 11.9252 10.9422 11.1894 9.72458 11.4993C8.91713 11.7048 8.28662 12.3353 8.08111 13.1428H0.571439C0.255837 13.1428 0 13.3986 0 13.7142C0 14.0297 0.255837 14.2856 0.571439 14.2856H8.08114C8.39102 15.5032 9.62926 16.239 10.8468 15.9291C11.6543 15.7236 12.2848 15.0931 12.4903 14.2856H15.4286C15.7442 14.2856 16 14.0298 16 13.7142C16 13.3986 15.7442 13.1428 15.4286 13.1428ZM10.2857 14.8571C9.65454 14.8571 9.14286 14.3454 9.14286 13.7142C9.14286 13.083 9.65454 12.5714 10.2857 12.5714C10.9169 12.5714 11.4286 13.083 11.4286 13.7142C11.4286 14.3454 10.9169 14.8571 10.2857 14.8571Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Skill level</h6>
                                <span>beginner</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M15.7188 9.8575V3.1875C15.7188 2.41209 15.0879 1.78125 14.3125 1.78125H12.4688V1.25C12.4688 0.991125 12.2589 0.78125 12 0.78125C11.7411 0.78125 11.5312 0.991125 11.5312 1.25V1.78125H8.46875V1.25C8.46875 0.991125 8.25887 0.78125 8 0.78125C7.74113 0.78125 7.53125 0.991125 7.53125 1.25V1.78125H4.46875V1.25C4.46875 0.991125 4.25887 0.78125 4 0.78125C3.74113 0.78125 3.53125 0.991125 3.53125 1.25V1.78125H1.40625C0.630844 1.78125 0 2.41209 0 3.1875V11.8125C0 12.5879 0.630844 13.2188 1.40625 13.2188H8.68531C9.35484 14.4112 10.6317 15.2188 12.0938 15.2188C14.2477 15.2188 16 13.4664 16 11.3125C16 10.7985 15.9 10.3074 15.7188 9.8575ZM12.5625 8.38087C13.8248 8.58197 14.8243 9.58144 15.0254 10.8438H12.5625V8.38087ZM1.40625 12.2812C1.14778 12.2812 0.9375 12.071 0.9375 11.8125V3.1875C0.9375 2.92903 1.14778 2.71875 1.40625 2.71875H3.53125V3.28125C3.53125 3.54012 3.74113 3.75 4 3.75C4.25887 3.75 4.46875 3.54012 4.46875 3.28125V2.71875H7.53125V3.28125C7.53125 3.54012 7.74113 3.75 8 3.75C8.25887 3.75 8.46875 3.54012 8.46875 3.28125V2.71875H11.5312V3.28125C11.5312 3.54012 11.7411 3.75 12 3.75C12.2589 3.75 12.4688 3.54012 12.4688 3.28125V2.71875H14.3125C14.571 2.71875 14.7812 2.92903 14.7812 3.1875V8.48034C14.0805 7.81506 13.134 7.40625 12.0938 7.40625C9.93984 7.40625 8.1875 9.15859 8.1875 11.3125C8.1875 11.6468 8.22978 11.9713 8.30916 12.2812H1.40625ZM12.0938 14.2812C10.4568 14.2812 9.125 12.9495 9.125 11.3125C9.125 9.83503 10.21 8.60631 11.625 8.38087V11.3125C11.625 11.5714 11.8349 11.7812 12.0938 11.7812H15.0254C14.7999 13.1962 13.5712 14.2812 12.0938 14.2812Z" fill="currentColor"/>
                                        <path d="M3.25 5.78125H2.5C2.24112 5.78125 2.03125 5.99112 2.03125 6.25C2.03125 6.50888 2.24112 6.71875 2.5 6.71875H3.25C3.50888 6.71875 3.71875 6.50888 3.71875 6.25C3.71875 5.99112 3.50888 5.78125 3.25 5.78125Z" fill="currentColor"/>
                                        <path d="M6 5.78125H5.25C4.99112 5.78125 4.78125 5.99112 4.78125 6.25C4.78125 6.50888 4.99112 6.71875 5.25 6.71875H6C6.25888 6.71875 6.46875 6.50888 6.46875 6.25C6.46875 5.99112 6.25888 5.78125 6 5.78125Z" fill="currentColor"/>
                                        <path d="M6 7.78125H5.25C4.99112 7.78125 4.78125 7.99112 4.78125 8.25C4.78125 8.50888 4.99112 8.71875 5.25 8.71875H6C6.25888 8.71875 6.46875 8.50888 6.46875 8.25C6.46875 7.99112 6.25888 7.78125 6 7.78125Z" fill="currentColor"/>
                                        <path d="M3.25 7.78125H2.5C2.24112 7.78125 2.03125 7.99112 2.03125 8.25C2.03125 8.50888 2.24112 8.71875 2.5 8.71875H3.25C3.50888 8.71875 3.71875 8.50888 3.71875 8.25C3.71875 7.99112 3.50888 7.78125 3.25 7.78125Z" fill="currentColor"/>
                                        <path d="M3.25 9.78125H2.5C2.24112 9.78125 2.03125 9.99112 2.03125 10.25C2.03125 10.5089 2.24112 10.7188 2.5 10.7188H3.25C3.50888 10.7188 3.71875 10.5089 3.71875 10.25C3.71875 9.99112 3.50888 9.78125 3.25 9.78125Z" fill="currentColor"/>
                                        <path d="M6 9.78125H5.25C4.99112 9.78125 4.78125 9.99112 4.78125 10.25C4.78125 10.5089 4.99112 10.7188 5.25 10.7188H6C6.25888 10.7188 6.46875 10.5089 6.46875 10.25C6.46875 9.99112 6.25888 9.78125 6 9.78125Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Deadline</h6>
                                <span>06 April 2020</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-3">
                                <div class="text-secondary d-flex icon-uxs">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M16.5465 5.13024L15.2322 4.02945L14.9329 2.34131C14.8335 1.78023 14.348 1.37335 13.7783 1.37335C13.778 1.37335 13.7775 1.37335 13.7772 1.37335L12.0628 1.37488L10.7485 0.274205C10.3114 -0.0919028 9.67738 -0.0913556 9.24091 0.275574L7.92861 1.37875L6.2142 1.38035C5.64405 1.3809 5.15872 1.78887 5.06026 2.35042L4.76408 4.03907L3.45178 5.14228C3.01535 5.50917 2.90582 6.13362 3.19137 6.62712L4.04992 8.1111L3.75378 9.79967C3.65524 10.3613 3.97276 10.91 4.50875 11.1046L5.9543 11.6292L5.95989 18.8268C5.95989 19.2647 6.20095 19.6629 6.58899 19.8659C6.76059 19.9556 6.94712 20 7.13295 20C7.36737 20 7.60062 19.9294 7.8013 19.7901L9.9861 18.2734L12.1709 19.7901C12.5306 20.0398 12.9951 20.0689 13.3832 19.8659C13.7712 19.6629 14.0123 19.2647 14.0123 18.8268V11.6377L15.5005 11.0945C16.0361 10.899 16.3526 10.3496 16.2531 9.78825L15.9538 8.10015L16.8096 6.61461C17.0943 6.12056 16.9836 5.49631 16.5465 5.13024ZM10.3205 17.078C10.1194 16.9385 9.85281 16.9385 9.65178 17.078L7.13264 18.8265C7.13264 18.8264 7.13264 18.8263 7.13264 18.8263L7.12842 13.3771C7.35154 13.6218 7.66652 13.7592 7.99315 13.7592C8.12738 13.7592 8.26357 13.7361 8.39608 13.6877L10.0065 13.0999L11.6181 13.6848C12.0517 13.842 12.5242 13.7298 12.8396 13.4196L12.8395 18.8266L10.3205 17.078ZM14.9377 7.51475C14.8003 7.75327 14.7511 8.03382 14.7992 8.30482L15.0984 9.99292L13.4878 10.5808C13.286 10.6545 13.1095 10.783 12.9761 10.949C12.9697 10.9566 12.9639 10.9647 12.9579 10.9727C12.9277 11.0123 12.899 11.0533 12.8739 11.0969L12.0185 12.5825C12.0185 12.5825 12.0183 12.5825 12.0181 12.5824L10.4065 11.9976C10.1478 11.9037 9.86297 11.9039 9.6044 11.9983L7.99393 12.5861L7.13538 11.1022C7.08925 11.0224 7.03339 10.9496 6.97073 10.8835C6.96507 10.8774 6.95975 10.871 6.95381 10.8652C6.83236 10.7425 6.68464 10.6468 6.52039 10.5871L4.90882 10.0022L5.205 8.31358C5.2525 8.04245 5.20277 7.76199 5.06495 7.52378L4.20639 6.03984L5.51869 4.93663C5.72942 4.75952 5.87163 4.51263 5.91912 4.24159L6.2153 2.55298L7.92963 2.55138C8.20489 2.55114 8.47254 2.45346 8.68319 2.27635L9.99549 1.17318L11.3098 2.27389C11.5205 2.45041 11.7879 2.54759 12.0629 2.54759H12.0638L13.7783 2.54602L14.0775 4.23416C14.1255 4.50517 14.2682 4.75166 14.4792 4.92842L15.7935 6.02921L14.9377 7.51475Z" fill="currentColor"/>
                                        <path d="M9.99928 3.64673C8.13493 3.64673 6.61816 5.1635 6.61816 7.02785C6.61816 8.89221 8.13493 10.409 9.99928 10.409C11.8636 10.409 13.3804 8.89221 13.3804 7.02785C13.3804 5.1635 11.8636 3.64673 9.99928 3.64673ZM9.99928 9.23631C8.78154 9.23631 7.79083 8.2456 7.79083 7.02785C7.79083 5.81011 8.78154 4.8194 9.99928 4.8194C11.217 4.8194 12.2078 5.81011 12.2078 7.02785C12.2078 8.2456 11.217 9.23631 9.99928 9.23631Z" fill="currentColor"/>
                                    </svg>

                                </div>
                                <h6 class="mb-0 ms-3 me-auto">Certificate</h6>
                                <span>Yes</span>
                            </li>
                            <li class="list-group-item d-flex align-items-center py-4">
                                <a href="course-single-v5.html" class="mx-auto text-teal fw-medium d-flex align-items-center mt-2">
                                    <!-- Icon -->
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M16.0283 6.25C14.3059 6.25 12.9033 4.84833 12.9033 3.125C12.9033 1.40167 14.3059 0 16.0283 0C17.7509 0 19.1533 1.40167 19.1533 3.125C19.1533 4.84833 17.7509 6.25 16.0283 6.25ZM16.0283 1.25C14.995 1.25 14.1533 2.09076 14.1533 3.125C14.1533 4.15924 14.995 5 16.0283 5C17.0616 5 17.9033 4.15924 17.9033 3.125C17.9033 2.09076 17.0616 1.25 16.0283 1.25Z" fill="currentColor"/>
                                        <path d="M16.0283 20C14.3059 20 12.9033 18.5983 12.9033 16.875C12.9033 15.1517 14.3059 13.75 16.0283 13.75C17.7509 13.75 19.1533 15.1517 19.1533 16.875C19.1533 18.5983 17.7509 20 16.0283 20ZM16.0283 15C14.995 15 14.1533 15.8408 14.1533 16.875C14.1533 17.9092 14.995 18.75 16.0283 18.75C17.0616 18.75 17.9033 17.9092 17.9033 16.875C17.9033 15.8408 17.0616 15 16.0283 15Z" fill="currentColor"/>
                                        <path d="M3.94531 13.125C2.22275 13.125 0.820312 11.7233 0.820312 10C0.820312 8.27667 2.22275 6.875 3.94531 6.875C5.66788 6.875 7.07031 8.27667 7.07031 10C7.07031 11.7233 5.66788 13.125 3.94531 13.125ZM3.94531 8.125C2.91199 8.125 2.07031 8.96576 2.07031 10C2.07031 11.0342 2.91199 11.875 3.94531 11.875C4.97864 11.875 5.82031 11.0342 5.82031 10C5.82031 8.96576 4.97864 8.125 3.94531 8.125Z" fill="currentColor"/>
                                        <path d="M6.12066 9.39154C5.90307 9.39154 5.69143 9.27817 5.57729 9.0766C5.40639 8.77661 5.51061 8.39484 5.8106 8.22409L13.5431 3.81568C13.8422 3.64325 14.2247 3.74823 14.3947 4.04914C14.5656 4.34912 14.4614 4.73075 14.1614 4.90164L6.42888 9.30991C6.33138 9.36484 6.22564 9.39154 6.12066 9.39154Z" fill="currentColor"/>
                                        <path d="M13.8524 16.2665C13.7475 16.2665 13.6416 16.2398 13.5441 16.1841L5.81151 11.7757C5.51152 11.6049 5.40745 11.2231 5.5782 10.9232C5.74818 10.6224 6.12996 10.5182 6.42994 10.6899L14.1623 15.0981C14.4623 15.269 14.5665 15.6506 14.3958 15.9506C14.2807 16.1531 14.0691 16.2665 13.8524 16.2665Z" fill="currentColor"/>
                                    </svg>

                                    <span class="ms-3">Share this course</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="d-none">
                    <div class="border rounded px-6 px-lg-5 px-xl-6 pt-5 shadow">
                        <h3 class="mb-5">Latest Courses</h3>
                        <ul class="list-unstyled mb-0">
                            <li class="media mb-6 d-flex">
                                <a href="course-single-v5.html" class="w-100p d-block me-5">
                                    <img src="assets/img/photos/photo-1.jpg" alt="..." class="avatar-img rounded-lg h-90p w-100p">
                                </a>
                                <div class="media-body flex-grow-1">
                                    <a href="course-single-v5.html" class="d-block">
                                        <h6 class="line-clamp-2 mb-3">Web Developtment and Design</h6>
                                    </a>
                                    <del class="font-size-sm me-2">$959</del>
                                    <ins class="h6 mb-0 ">$415.99</ins>
                                </div>
                            </li>

                            <li class="media mb-6 d-flex">
                                <a href="course-single-v5.html" class="w-100p d-block me-5">
                                    <img src="assets/img/photos/photo-2.jpg" alt="..." class="avatar-img rounded-lg h-90p w-100p">
                                </a>
                                <div class="media-body flex-grow-1">
                                    <a href="course-single-v5.html" class="d-block">
                                        <h6 class="line-clamp-2 mb-3">The Complete Cyber Security Course : Hackers </h6>
                                    </a>
                                    <del class="font-size-sm me-2">$959</del>
                                    <ins class="h6 mb-0 ">$415.99</ins>
                                </div>
                            </li>

                            <li class="media mb-6 d-flex">
                                <a href="course-single-v5.html" class="w-100p d-block me-5">
                                    <img src="assets/img/photos/photo-14.jpg" alt="..." class="avatar-img rounded-lg h-90p w-100p">
                                </a>
                                <div class="media-body flex-grow-1">
                                    <a href="course-single-v5.html" class="d-block">
                                        <h6 class="line-clamp-2 mb-3">Fashion Photography From Professional</h6>
                                    </a>
                                    <del class="font-size-sm me-2">$959</del>
                                    <ins class="h6 mb-0 ">$415.99</ins>
                                </div>
                            </li>

                            <li class="media mb-6 d-flex">
                                <a href="course-single-v5.html" class="w-100p d-block me-5">
                                    <img src="assets/img/photos/photo-16.jpg" alt="..." class="avatar-img rounded-lg h-90p w-100p">
                                </a>
                                <div class="media-body flex-grow-1">
                                    <a href="course-single-v5.html" class="d-block">
                                        <h6 class="line-clamp-2 mb-3">The Complete Financial Analyst Course 2020</h6>
                                    </a>
                                    <del class="font-size-sm me-2">$959</del>
                                    <ins class="h6 mb-0 ">$415.99</ins>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <div class="text-center mb-5 mb-md-8">
            <h1>Related Courses</h1>
            <p class="font-size-lg text-capitalize">Discover your perfect program in our courses.</p>
        </div>

        <div class="mx-n4 mb-12" data-flickity='{"pageDots": true, "prevNextButtons": false, "cellAlign": "left", "wrapAround": true, "imagesLoaded": true}'>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-15.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Photography</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">Fashion Photography From Professional</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-14.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Marketing</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">Productivity and Time Management for workplace</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-16.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Personal Development</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">Learn Ethical Hacking From Scratch</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-12.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Development</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">The Complete JavaScript Course 2020: Real Projects!</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-13.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Marketing</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">Learn Ethical Hacking From Scratch</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-11.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Development</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">The Complete JavaScript Course 2020: Real Projects!</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-3 pb-4 pb-md-5" style="padding-right:15px;padding-left:15px;">
                <!-- Card -->
                <div class="card border shadow-dark-hover p-2 sk-fade">
                    <!-- Image -->
                    <div class="card-zoom position-relative">
                        <a href="course-single-v5.html" class="card-img sk-thumbnail img-ratio-3 d-block">
                            <img class="rounded shadow-light-lg" src="assets/img/products/product-10.jpg" alt="...">
                        </a>

                        <span class="sk-fade-right badge-float bottom-0 right-0 mb-2 me-2">
                            <ins class="h5 mb-0 text-white">$415.99</ins>
                        </span>
                    </div>

                    <!-- Footer -->
                    <div class="card-footer px-2 pb-2 mb-1 pt-4 position-relative">
                        <!-- Preheading -->
                        <a href="course-single-v5.html"><span class="mb-1 d-inline-block text-gray-800">Marketing</span></a>

                        <!-- Heading -->
                        <div class="position-relative">
                            <a href="course-single-v5.html" class="d-block stretched-link"><h5 class="line-clamp-2 h-md-48 h-lg-58 me-md-8 me-lg-10 me-xl-4 mb-2">Productivity and Time Management for workplace</h5></a>

                            <div class="row mx-n2 align-items-end">
                                <div class="col px-2">
                                    <ul class="nav mx-n3">
                                        <li class="nav-item px-3">
                                            <div class="d-flex align-items-center">
                                                <div class="me-2 d-flex icon-uxs text-secondary">
                                                    <!-- Icon -->
                                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M17.1947 7.06802L14.6315 7.9985C14.2476 7.31186 13.712 6.71921 13.0544 6.25992C12.8525 6.11877 12.6421 5.99365 12.4252 5.88303C13.0586 5.25955 13.452 4.39255 13.452 3.43521C13.452 1.54098 11.9124 -1.90735e-06 10.0197 -1.90735e-06C8.12714 -1.90735e-06 6.58738 1.54098 6.58738 3.43521C6.58738 4.39255 6.98075 5.25955 7.61414 5.88303C7.39731 5.99365 7.1869 6.11877 6.98502 6.25992C6.32752 6.71921 5.79178 7.31186 5.40787 7.9985L2.8447 7.06802C2.33612 6.88339 1.79688 7.26044 1.79688 7.80243V16.5178C1.79688 16.8465 2.00256 17.14 2.31155 17.2522L9.75312 19.9536C9.93073 20.018 10.1227 20.0128 10.2863 19.9536L17.7278 17.2522C18.0368 17.14 18.2425 16.8465 18.2425 16.5178V7.80243C18.2425 7.26135 17.704 6.88309 17.1947 7.06802ZM10.0197 1.5625C11.0507 1.5625 11.8895 2.40265 11.8895 3.43521C11.8895 4.46777 11.0507 5.30792 10.0197 5.30792C8.98866 5.30792 8.14988 4.46777 8.14988 3.43521C8.14988 2.40265 8.98866 1.5625 10.0197 1.5625ZM9.23844 18.1044L3.35938 15.9703V8.91724L9.23844 11.0513V18.1044ZM10.0197 9.67255L6.90644 8.54248C7.58164 7.51892 8.75184 6.87042 10.0197 6.87042C11.2875 6.87042 12.4577 7.51892 13.1329 8.54248L10.0197 9.67255ZM16.68 15.9703L10.8009 18.1044V11.0513L16.68 8.91724V15.9703Z" fill="currentColor"/>
                                                    </svg>

                                                </div>
                                                <div class="font-size-sm">5 lessons</div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="col-auto px-2 text-right">
                                    <div class="star-rating mb-2 mb-lg-0">
                                        <div class="rating" style="width:100%;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FOOTER
    ================================================== -->
    <footer class="pt-8 pt-md-11 bg-gray-100">
        <div class="container">
            <div class="row" id="accordionFooter">
                <div class="col-12 col-md-4 col-lg-4">

                    <!-- Brand -->
                    <img src="assets/img/brand.svg" alt="..." class="footer-brand img-fluid mb-4 h-60p">

                    <!-- Text -->
                    <p class="text-gray-800 mb-4 font-size-sm-alone">
                        329 Queensberry Street, North Melbourne VIC 3051, Australia.
                    </p>

                    <div class="mb-4">
                        <a href="tel:1234567890" class="text-gray-800 font-size-sm-alone">123 456 7890</a>
                    </div>

                    <div class="mb-4">
                        <a href="mailto:support@skola.com" class="text-gray-800 font-size-sm-alone">support@skola.com</a>
                    </div>

                    <!-- Social -->
                    <ul class="list-unstyled list-inline list-social mb-4 mb-md-0">
                        <li class="list-inline-item list-social-item">
                            <a href="#" class="text-secondary font-size-sm w-36 h-36 shadow-dark-hover d-flex align-items-center justify-content-center rounded-circle border-hover">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li class="list-inline-item list-social-item">
                            <a href="#" class="text-secondary font-size-sm w-36 h-36 shadow-dark-hover d-flex align-items-center justify-content-center rounded-circle border-hover">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item list-social-item">
                            <a href="#" class="text-secondary font-size-sm w-36 h-36 shadow-dark-hover d-flex align-items-center justify-content-center rounded-circle border-hover">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </li>
                        <li class="list-inline-item list-social-item">
                            <a href="#" class="text-secondary font-size-sm w-36 h-36 shadow-dark-hover d-flex align-items-center justify-content-center rounded-circle border-hover">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-12 col-md-4 col-lg-2">
                    <div class="mb-5 mb-xl-0 footer-accordion">

                        <!-- Heading -->
                        <div id="widgetOne">
                            <h5 class="mb-5">
                                <button class="text-dark fw-medium footer-accordion-toggle d-flex align-items-center" type="button" data-bs-toggle="collapse" data-bs-target="#widgetcollapseOne" aria-expanded="true" aria-controls="widgetcollapseOne">
                                    Our Company
                                    <span class="ms-auto text-dark">
                                        <!-- Icon -->
                                        <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect width="15" height="2" fill="currentColor"/>
                                        </svg>

                                        <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                            <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                        </svg>

                                    </span>
                                </button>
                            </h5>
                        </div>

                        <div id="widgetcollapseOne" class="collapse show" aria-labelledby="widgetOne" data-parent="#accordionFooter">
                            <!-- List -->
                            <ul class="list-unstyled text-gray-800 font-size-sm-alone mb-6 mb-md-8 mb-lg-0">
                                <li class="mb-3">
                                    <a href="about-v1.html" class="text-reset">
                                        Our Company
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="about-v2.html" class="text-reset">
                                        About Us
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="contact-us.html" class="text-reset">
                                        Contact Us
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="contact-us.html" class="text-reset">
                                        Community
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v1.html" class="text-reset">
                                        Student Perks
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="blog-grid-v1.html" class="text-reset">
                                        Blog
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="pricing.html" class="text-reset">
                                        Affiliate Program
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="contact-us.html" class="text-reset">
                                        Careers
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4 col-lg-2">
                    <div class="mb-5 mb-xl-0 ms-xl-6 footer-accordion">

                        <!-- Heading -->
                        <div id="widgetTwo">
                            <h5 class="mb-5">
                                <button class="text-dark fw-medium footer-accordion-toggle d-flex align-items-center" type="button" data-bs-toggle="collapse" data-bs-target="#widgetcollapseTwo" aria-expanded="false" aria-controls="widgetcollapseTwo">
                                    Topics
                                    <span class="ms-auto text-dark">
                                        <!-- Icon -->
                                        <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect width="15" height="2" fill="currentColor"/>
                                        </svg>

                                        <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                            <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                        </svg>

                                    </span>
                                </button>
                            </h5>
                        </div>

                        <div id="widgetcollapseTwo" class="collapse" aria-labelledby="widgetTwo" data-parent="#accordionFooter">
                            <!-- List -->
                            <ul class="list-unstyled text-gray-800 font-size-sm-alone mb-6 mb-md-8 mb-lg-0">
                                <li class="mb-3">
                                    <a href="course-list-v2.html" class="text-reset">
                                        HTML
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v2.html" class="text-reset">
                                        CSS
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v6.html" class="text-reset">
                                        Design
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v5.html" class="text-reset">
                                        JavaScript
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v4.html" class="text-reset">
                                        Ruby
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v1.html" class="text-reset">
                                        PHP
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v3.html" class="text-reset">
                                        Android
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v4.html" class="text-reset">
                                        Development Tools
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="course-list-v6.html" class="text-reset">
                                        Business
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4 offset-md-4 col-lg-2 offset-lg-0">
                    <div class="mb-5 mb-xl-0 ms-xl-6 footer-accordion">

                        <!-- Heading -->
                        <div id="widgetThree">
                            <h5 class="mb-5">
                                <button class="text-dark fw-medium footer-accordion-toggle d-flex align-items-center" type="button" data-bs-toggle="collapse" data-bs-target="#widgetcollapseThree" aria-expanded="false" aria-controls="widgetcollapseThree">
                                    Tracks
                                    <span class="ms-auto text-dark">
                                        <!-- Icon -->
                                        <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect width="15" height="2" fill="currentColor"/>
                                        </svg>

                                        <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                            <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                        </svg>

                                    </span>
                                </button>
                            </h5>
                        </div>

                        <div id="widgetcollapseThree" class="collapse" aria-labelledby="widgetThree" data-parent="#accordionFooter">
                            <!-- List -->
                            <ul class="list-unstyled text-gray-800 font-size-sm-alone mb-0">
                                <li class="mb-3">
                                    <a href="lesson-single-v1.html" class="text-reset">
                                        Web Design
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="lesson-single-v2.html" class="text-reset">
                                        Web Development
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="lesson-single-v1.html" class="text-reset">
                                        Rails Development
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="lesson-single-v2.html" class="text-reset">
                                        PHP Development
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="lesson-single-v1.html" class="text-reset">
                                        Android Development
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="lesson-single-v2.html" class="text-reset">
                                        Starting a Business
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-4 col-lg-2 d-xl-flex">
                    <div class="mb-5 mb-xl-0 ms-xl-auto footer-accordion">

                        <!-- Heading -->
                        <div id="widgetFour">
                            <h5 class="mb-5">
                                <button class="text-dark fw-medium footer-accordion-toggle d-flex align-items-center" type="button" data-bs-toggle="collapse" data-bs-target="#widgetcollapseFour" aria-expanded="false" aria-controls="widgetcollapseFour">
                                    Support
                                    <span class="ms-auto text-dark">
                                        <!-- Icon -->
                                        <svg width="15" height="2" viewBox="0 0 15 2" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect width="15" height="2" fill="currentColor"/>
                                        </svg>

                                        <svg width="15" height="16" viewBox="0 0 15 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M0 7H15V9H0V7Z" fill="currentColor"/>
                                            <path d="M6 16L6 8.74228e-08L8 0L8 16H6Z" fill="currentColor"/>
                                        </svg>

                                    </span>
                                </button>
                            </h5>
                        </div>

                        <div id="widgetcollapseFour" class="collapse" aria-labelledby="widgetFour" data-parent="#accordionFooter">
                            <!-- List -->
                            <ul class="list-unstyled text-gray-800 font-size-sm-alone mb-0">
                                <li class="mb-3">
                                    <a href="docs/index.html" class="text-reset">
                                        Documentation
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="docs/index.html" class="text-reset">
                                        Forums
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="docs/index.html" class="text-reset">
                                        Language Packs
                                    </a>
                                </li>
                                <li class="mb-3">
                                    <a href="docs/changelog.html" class="text-reset">
                                        Release Status
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-12 mt-md-5">
                    <div class="border-top pb-5 pt-6 py-md-4 text-center text-xl-start d-flex flex-column d-md-block d-xl-flex flex-xl-row align-items-center">
                        <p class="text-gray-800 font-size-sm-alone d-block mb-0 mb-md-2 mb-xl-0 order-1 order-md-0 px-9 px-md-0">Copyright © 2021 CreativeLayers. All Right Reserved.</p>

                        <div class="ms-xl-auto d-flex flex-column flex-md-row align-items-stretch align-items-md-center justify-content-center">
                            <ul class="navbar-nav flex-row flex-wrap font-size-sm-alone mb-3 mb-md-0 mx-n4 me-md-5 justify-content-center justify-content-lg-start order-1 order-md-0">
                                <li class="nav-item py-2 py-md-0 px-0 border-top-0">
                                    <a href="index.html" class="nav-link px-4 fw-normal text-gray-800">Home</a>
                                </li>
                                <li class="nav-item py-2 py-md-0 px-0 border-top-0">
                                    <a href="terms-of-service.html" class="nav-link px-4 fw-normal text-gray-800">Site Map</a>
                                </li>
                                <li class="nav-item py-2 py-md-0 px-0 border-top-0">
                                    <a href="terms-of-service.html" class="nav-link px-4 fw-normal text-gray-800">Privacy policy</a>
                                </li>
                                <li class="nav-item py-2 py-md-0 px-0 border-top-0">
                                    <a href="terms-of-service.html" class="nav-link px-4 fw-normal text-gray-800">Web Use Policy</a>
                                </li>
                                <li class="nav-item py-2 py-md-0 px-0 border-top-0">
                                    <a href="terms-of-service.html" class="nav-link px-4 fw-normal text-gray-800">Cookie Policy</a>
                                </li>
                            </ul>

                            <select class="form-select form-select-sm font-size-sm-alone shadow min-width-140 text-left mb-4 mb-md-0" data-choices>
                                <option>English</option>
                                <option>Tamil</option>
                                <option>French</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div> <!-- / .row -->
        </div> <!-- / .container -->
    </footer>


    <!-- JAVASCRIPT
    ================================================== -->
    <!-- Libs JS -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/%40fancyapps/fancybox/dist/jquery.fancybox.min.js"></script>
    <script src="assets/libs/aos/dist/aos.js"></script>
    <script src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>
    <script src="assets/libs/countup.js/dist/countUp.min.js"></script>
    <script src="assets/libs/dropzone/dist/min/dropzone.min.js"></script>
    <script src="assets/libs/flickity/dist/flickity.pkgd.min.js"></script>
    <script src="assets/libs/flickity-fade/flickity-fade.js"></script>
    <script src="assets/libs/highlightjs/highlight.pack.min.js"></script>
    <script src="assets/libs/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="assets/libs/isotope-layout/dist/isotope.pkgd.min.js"></script>
    <script src="assets/libs/jarallax/dist/jarallax.min.js"></script>
    <script src="assets/libs/jarallax/dist/jarallax-video.min.js"></script>
    <script src="assets/libs/jarallax/dist/jarallax-element.min.js"></script>
    <script src="assets/libs/parallax-js/dist/parallax.min.js"></script>
    <script src="assets/libs/quill/dist/quill.min.js"></script>
    <script src="assets/libs/smooth-scroll/dist/smooth-scroll.min.js"></script>
    <script src="assets/libs/typed.js/lib/typed.min.js"></script>

    <!-- Map -->
    <script src='../../../api.mapbox.com/mapbox-gl-js/v0.53.0/mapbox-gl.js'></script>

    <!-- Theme JS -->
    <script src="assets/js/theme.min.js"></script>


</body>

<!-- Mirrored from transvelo.github.io/skola-html/5.1/course-single-v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Jan 2022 12:12:12 GMT -->
</html>
