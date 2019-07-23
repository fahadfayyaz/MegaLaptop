<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="/assets/image/favicon.png" rel="icon" />
<title>Marketshop - eCommerce HTML Template</title>
<meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">
<!-- CSS Part Start-->
<link rel="stylesheet" type="text/css" href="/assets/js/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/owl.transitions.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css" />
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>
<!-- CSS Part End-->
</head>
<body>
<div class="wrapper-wide">
<div id="header">
  <!-- Top Bar Start-->
  <nav id="top" class="htop">
    <div class="container">
      <div class="row"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
        <div class="pull-left flip left-top">
          <div class="links">
            <ul>
              <li class="mobile"><i class="fa fa-phone"></i>+92 322 3411811</li>
              <li class="email"><a href="mailto:info@alfateemacademy.com"><i class="fa fa-envelope"></i>info@marketshop.com</a></li>
              <li><a href="#">Wish List (0)</a></li>
              <li><a href="checkout.html">Checkout</a></li>
            </ul>
          </div>
        </div>
        <div id="top-links" class="nav pull-right flip">
          <ul>
            <li><a href="http://megalaptop.test/admin">Login</a></li>
            <li><a href="register.html">Register</a></li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <!-- Top Bar End-->
  <!-- Header Start-->
  <header class="header-row">
    <div class="container">
      <div class="table-container">
        <!-- Logo Start -->
        <div class="col-table-cell col-lg-6 col-md-6 col-sm-12 col-xs-12 inner">
          <div id="logo"><a href="index.html"><img class="img-responsive" src="/assets/image/logo.png" title="MarketShop" alt="MarketShop" /></a></div>
        </div>
        <!-- Logo End -->
        <!-- Search Start-->
        <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12 inner">
          <form method="get" action="/product">
          <div id="search" class="input-group">
            <input id="s" type="text" name="s" value="<?php echo $this->input->get('s') ?>" placeholder="Search" class="form-control input-lg" />
            <button type="submit" class="button-search"><i class="fa fa-search"></i></button>
          </div>
          </form>
        </div>
        <!-- Search End-->
      </div>
    </div>
  </header>
  <!-- Header End-->
  <!-- Main Menu Start-->
  <div class="container">
    <nav id="menu" class="navbar">
      <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <b></b></span></div>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li><a class="home_link" title="Home" href="index.html"><span>Home</span></a></li>
          <li><a href="#">Categories</a></li>
          <li><a href="#">Brands</a></li>
          <li><a href="#">Custom Links</a></li>
          <li><a href="#">Custom Block</a></li>
          <li><a href="#">Pages</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
    </nav>
  </div>
  <!-- Main Menu End-->
</div>