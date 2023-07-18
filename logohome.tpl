


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
<title>{$settings.site_name}</title>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,500,700,500italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,300italic,300,400italic,500,700,500italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="style.css" type="text/css" />
<link rel="stylesheet" href="faqstyle.css" type="text/css" />
<link rel="shortcut icon" type="image/png" href="images/favicon.png"/>
<link rel="stylesheet" type="text/css" href="../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">


    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="ie10-viewport-bug-workaround.html" rel="stylesheet">

    <!-- Custom styles for this template -->
<link href="style.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="ie-emulation-modes-warning.html"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!--- banner tab script --->

 <script src='ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="images/js/prefixfree.min.js"></script>


<!--- banner tab script --->

<!---- calc script --->

<script type="text/javascript" src="ajax/jquery-latest.min.js"></script>
<script type="text/javascript" src="images/js/calcs.js"></script>


<!---- calc script --->

</head>

<body>

<section class="top-bg">
    <div class="container">
    	<div class="right-menu col-lg-12 col-md-12 col-sm-12 col-xs-12">
        	<div class="right-btn" >
                    	{if $userinfo.logged != 1}
                    	<a href="?a=login" ><img src="images/in.png">Login</a>
                    	<a href="?a=signup" ><img src="images/up.png">Register</a>
						{else}
						<a href="?a=logout" ><img src="images/in.png">Logout</a>
                        <a href="?a=account" ><img src="images/up.png">Account</a>
						{/if}
            </div>
        </div>
      <!-- Static navbar -->
      <nav class="navbar navbar-default col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="container-fluid row top">
          <div class="navbar-header col-lg-3 col-md-3 col-sm-12 col-xs-12">
<button type="button" class="navbar-toggle collapsed " data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand col-md-10 col-sm-9 col-xs-8"><a href="indexbc14.html?a=home"><img src="images/logo.png" class="img-responsive"></a></div>
          </div>
          <div id="navbar" class="navbar-collapse collapse col-lg-9 col-md-9 col-sm-12 col-xs-12 menu" align="center">
            <ul class="nav navbar-nav">
              <li><a href="?a=home">Home</a></li>
              <li><a href="?a=cust&amp;page=aboutus">About Us </a></li>
              <li><a href="?a=cust&amp;page=banner">Banner</a></li>
              <li><a href="?a=cust&amp;page=plan">Plans</a></li>
              <li><a href="?a=faq">FAQ</a></li>
              <li><a href="?a=rules">Terms</a></li>
              <li><a href="?a=support">Contact Us</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
  </div> 

            
<div class="clear"></div>

<!----- header logo and menus ---->

<!------- banner ------>

<div class="container banner ">
    	<h1><span>Welcome</span> {$settings.site_name}</h1>
        <h3>Investment For Your Future. Just join, and you will be delighted</h3>
        <div class="banner-btn" align="center">
                    	<a href="?a=signup" >Open NEW Account</a>
</div>
    </div>  

	
	{if $type == 3}	
	{else}
	</section>


<div class="clear"></div>

<!------- banner ------>


<div class="container">
<div class="box6" >
<h3 id="formname_main"><b>{$titlepage}</b></h3>

<br>



<p align=justify>
{/if}
