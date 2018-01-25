<!-- FOOTER-->
<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	 $logo = ot_get_option( 'logo' );
	  $description_about = ot_get_option( 'description_about' );
	  $instagram = ot_get_option( 'instagram' );
	  $facebook = ot_get_option( 'facebook' );
	  $twitter = ot_get_option( 'twitter' );
	  $call = ot_get_option( 'phone' );
	  $email = ot_get_option( 'email' );
	  $fax = ot_get_option( 'fax' );
	  $address = ot_get_option( 'address' );
	}
    ?>
    <footer class="site-footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-6 footer-col-4">
                        <div class="widget widget_about">
                            <div class="logo-footer"><img src="<?php echo $logo; ?>" alt=""></div>
                            <p class="m-tb20"><?php echo $description_about; ?></p>
                            <ul class="dez-social-icon border dez-social-icon-lg">
								<li><a href="<?php echo $facebook; ?>" class="fa fa-facebook fb-btn"></a></li>
								<li><a href="<?php echo $twitter; ?>" class="fa fa-twitter tw-btn"></a></li>
								<li><a href="<?php echo $instagram; ?>" class="fa fa-instagram link-btn"></a></li>
							</ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 footer-col-4">
                        <div class="widget widget_services">
                            <h4 class="m-b15 text-uppercase">
						<?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo ' روابط مهمة'; 
								}elseif($lang == 'en'){
								echo ' Links'; 
							};
								?> </h4>
                            <div class="dez-separator bg-primary"></div>
							<?php
  						$lang = custom_get_current_lang();
						if($lang == 'ar'){
							echo '  <ul>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar">الرئيسية</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/about/">عن الشركة</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/2products/">الزراعة</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/news-2">العقارات</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/ar/con/">اتصل بنا</a></li>
					</ul>'; 
							}elseif($lang == 'en'){
							echo '   <ul>
							<li><a href="http://localhost/psolvingegypt/elkabel">Home</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/about-us/">About us</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/products">Farming</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/news">Property</a></li>
							<li><a href="http://localhost/psolvingegypt/elkabel/contact-us/">Contact us </a></li>
					</ul>'; 
						};
				?> 
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 footer-col-4">
                        <div class="widget widget_getintuch">
                            <h4 class="m-b15 text-uppercase">
						<?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo 'اتصل بنا'; 
								}elseif($lang == 'en'){
								echo 'Contact us'; 
							};
								?> </h4>
                            <div class="dez-separator bg-primary"></div>
                            <ul>
                                <li><i class="fa fa-map-marker"></i><?php echo $address; ?></li>
                                <li><i class="fa fa-phone"></i><?php echo $call; ?></li>
                                <li><i class="fa fa-fax"></i><?php echo $fax; ?></li>
                                <li><i class="fa fa-envelope-o"></i><?php echo $email; ?></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer bottom part -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-left"> <span>© Copyright 2017</span> </div>
					<div class="col-md-6 text-right"> <span> Design & Developer  With <i class="fa fa-heart text-white heart"></i> By Problem Solving Egypt </span> </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer END-->
    <!-- scroll top button -->
    <button class="scroltop fa fa-arrow-up" ></button>
</div>
<?php wp_footer(); ?>
<script type="text/javascript">
jQuery(document).ready(function() {
	'use strict';
	dz_rev_slider_1();
});	/*ready*/
</script>
<div id="loading-area"></div>
</body>	
</html>