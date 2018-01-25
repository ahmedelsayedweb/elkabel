<!DOCTYPE html>
<html <?php get_bloginfo('language') ?>>
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $logo = ot_get_option( 'logo' );
	  $instagram = ot_get_option( 'instagram' );
	  $facebook = ot_get_option( 'facebook' );
	  $twitter = ot_get_option( 'twitter' );
	  $call = ot_get_option( 'phone' );
	  $email = ot_get_option( 'email' );
	}
    ?>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>"/>
		<title><?php wp_title('|','true','right'); ?><?php bloginfo('name'); ?></title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/ico" href="<?php echo $logo; ?>" />
		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
		<?php wp_head(); ?>
		<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900|Open+Sans:300,400,600,700,800|Roboto:100,300,400,500,700,900" rel="stylesheet">
	</head>
	<body id="bg">
<div class="page-wraper">
    	<!-- header -->
        <header class="site-header header-style-3 dark">
            <!-- top bar -->
        	<div class="top-bar">
            	<div class="container">
                	<div class="row">
                    	<div class="dez-topbar-left">
							<ul class="social-line text-center pull-right">
								<li><a href="javascript:void(0);"><i class="fa fa-phone text-primary"></i> <span><?php echo $call; ?></span> </a></li>
								<li><a href="javascript:void(0);"><i class="fa fa-envelope-o text-primary"></i> <span><?php echo $email; ?></span></a></li>
							</ul>
                        </div>                        
                        <div class="dez-topbar-right">
							<ul class="social-line text-center pull-right">
								<li><a href="<?php echo $facebook; ?>"><i class="fa fa-facebook text-primary"></i></a></li>
								<li><a href="<?php echo $twitter; ?>"><i class="fa fa-twitter text-primary"></i></a></li>
								<li><a href="<?php echo $instagram; ?>"><i class="fa fa-instagram text-primary"></i></a></li>
								<li>
									<?php
					if(is_active_sidebar('header')){
					dynamic_sidebar('header');
					}
					?></li>
							</ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- top bar END-->
            
            <!-- main header -->
        	<div class="sticky-header main-bar-wraper header-curve">
                <div class="main-bar clearfix ">
					<div class="slide-up">
						<div class="container clearfix bg-primary">
							<div class="logo-header mostion">
								<a href="<?php bloginfo('url'); ?>">
									<img src="<?php echo $logo; ?>" width="193" height="89" alt="">
								</a>
							</div>
							<button data-target=".header-nav" data-toggle="collapse" type="button" class="navbar-toggle collapsed">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>	
							</button>
							<div class="extra-nav"></div>
                    <div class="header-nav navbar-collapse collapse">
						<?php
  						$lang = custom_get_current_lang();
						if($lang == 'ar'){
							echo '  <ul class=" nav navbar-nav">
							<li><a href="http://localhost/psolvingegypt/elkabel/ar">الرئيسية</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/about">عن الشركة</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/2products/">الزراعة</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/news-2">العقارات</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/con">اتصل بنا</a></li>
					</ul>'; 
							}elseif($lang == 'en'){
							echo '   <ul class=" nav navbar-nav">
							<li><a href="http://localhost/psolvingegypt/elkabel">Home</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/about-us">About us</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/products">Farming</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/news">Property</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/contact-us">Contact us </a></li>
					</ul>'; 
						};
				?>
                       
                    </div>
						</div>
					</div>	
                </div>
            </div>
            <!-- main header END -->
        </header>
        <!-- header END -->