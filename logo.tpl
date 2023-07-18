


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
    	<h1><span>Welcome</span>{$settings.site_name}</h1>
        <h3>Investment For Your Future. Just join, and you will be delighted</h3>
        <div class="banner-btn" align="center">
                        <a href="?a=account" >Member Account</a>
</div>
    </div>  


</section>

<div class="clear"></div>



<div class="container">

<div class="left-navigation col-lg-3 col-md-12 col-sm-12 col-xs-12" >

<div class="navigation col-lg-12 col-md-12 col-sm-12 col-xs-12" >
{if $userinfo.logged == 1}	
<ul class="fullnav">
	<li><a href=?a=account class="menutxt"><span id="menu-icon" style="background:url(images/menu1.png) no-repeat;"></span>Account</a></li>
    <li><a href=?a=deposit class="menutxt"><span id="menu-icon" style="background:url(images/menu2.png) no-repeat;"></span>Make Deposit</a></li>
    <li><a href=?a=deposit_list class="menutxt"><span id="menu-icon" style="background:url(images/menu4.png) no-repeat;"></span>Your Deposits</a></li>
    <li><a href=?a=deposit_history class="menutxt"><span id="menu-icon" style="background:url(images/menu5.png) no-repeat;"></span>Deposits History</a></li>
    <li><a href=?a=earnings class="menutxt"><span id="menu-icon" style="background:url(images/menu6.png) no-repeat;"></span>Earnings History</a></li>
    <li><a href=?a=earnings&type=commissions class="menutxt"><span id="menu-icon" style="background:url(images/menu7.png) no-repeat;"></span>Referrals History</a></li>
    <li><a href=?a=withdraw class="menutxt"><span id="menu-icon" style="background:url(images/menu8.png) no-repeat;"></span>Withdraw</a></li>
    <li><a href=?a=withdraw_history class="menutxt"><span id="menu-icon" style="background:url(images/menu9.png) no-repeat;"></span>Withdraw History</a></li>
    <li><a href=?a=referals class="menutxt"><span id="menu-icon" style="background:url(images/menu1.png) no-repeat;"></span>Your Referrals</a></li>
    <li><a href=?a=referallinks class="menutxt"><span id="menu-icon" style="background:url(images/menu10.png) no-repeat;"></span>Referral Links</a></li>
    <li><a href=?a=edit_account class="menutxt"><span id="menu-icon" style="background:url(images/menu11.png) no-repeat;"></span>Edit Account</a></li>
    <li><a href=?a=security class="menutxt"><span id="menu-icon" style="background:url(images/menu12.png) no-repeat;"></span>Security</a></li>
    <li><a href=?a=logout class="menutxt"><span id="menu-icon" style="background:url(images/menu13.png) no-repeat;"></span>Logout</a></li>
</ul>


	<ul id="accordion" class="accordion dropdownnav">
		<li>
			<div class="link"><i class="fa fa-paint-brush"></i>ACCOUNT<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
<li><a href=?a=account class="menutxt">Account</a></li>
<li><a href=?a=edit_account class="menutxt">Edit Account</a></li>
    <li><a href=?a=security class="menutxt">Security</a></li>
    <li><a href=?a=logout class="menutxt">Logout</a></li>
			</ul>
		</li>
		<li class="default open">
			<div class="link"><i class="fa fa-code"></i>DEPOSIT<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href=?a=deposit class="menutxt">Make Deposit</a></li>
    <li><a href=?a=deposit_list class="menutxt">Your Deposits</a></li>
    <li><a href=?a=withdraw class="menutxt">Withdraw</a></li>
 <li><a href=?a=referals class="menutxt">Your Referrals</a></li>
    <li><a href=?a=referallinks class="menutxt">Referral Links</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-mobile"></i>HISTORY<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
	<li><a href=?a=deposit_history class="menutxt">Deposits History</a></li>
    <li><a href=?a=earnings class="menutxt">Earnings History</a></li>
    <li><a href=?a=earnings&type=commissions class="menutxt">Referrals History</a></li>
    <li><a href=?a=withdraw_history class="menutxt">Withdraw History</a></li>
			</ul>
		</li>
	</ul>
{/if}

</div>

</div>


				   

                                   




					<!-- Stats Table: End -->
					<!-- Image Table: End -->





              </td>



              <td class=line valign="top" width=1><img src=images/q.gif width=1 height=1></td>          



              <td class=bgcolormain valign="top" width=99%>

<div class="right-navigation col-lg-9 col-md-9 col-sm-12 col-xs-12">
    <br/>
    <br/>