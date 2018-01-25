<?php
/**
 * Template Name: Page contact Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
<div class="content-area">
            <div class="container">
                <div class="row">
                    <!-- Left part start -->
                    <div class="col-md-12">
                        <h4><?php the_title(); ?></h4>
                        <div class="dzFormMsg"></div>
                        <div class="p-a30 bg-white clearfix m-b30">
							<?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								 echo do_shortcode('[contact-form-7 id="4" title="Contact form en"]');
								}elseif($lang == 'en'){
								echo do_shortcode('[contact-form-7 id="4" title="Contact form en"]');
							};
							?> 
                        </div>
                    </div>
                    <!-- Left part END -->
                </div>
				<div class="row">
					<div class="col-md-12">
					<!-- Map part start -->
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100735.70794596446!2d139.81759466220961!3d35.69585992068708!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b857628235d%3A0xcdd8aef709a2b520!2zVG9reW8sINi32YjZg9mK2YjYjCDYp9mE2YrYp9io2KfZhg!5e0!3m2!1sar!2seg!4v1514127353438" frameborder="0" style="border:0; width:100%; height:400px;" allowfullscreen></iframe>
					<!-- Map part END -->
					</div>
				</div>
				
            </div>
        </div>
 <!-- <section class="contact-form-section">
    	<div class="auto-container">
        	<div class="row clearfix">
         
                <div class="form-column col-sm-12 col-xs-12 pull-right">
                	
      
                    <div class="contact-form">
                            
                        <div class="sec-title">
                            <h2><?php the_title(); ?></h2>
                            <div class="separator"></div>
                        </div>
                      <?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								 echo do_shortcode('[contact-form-7 id="48" title="Contact Form ar"]');
								}elseif($lang == 'en'){
								echo do_shortcode('[contact-form-7 id="4" title="Contact form en"]');
							};
							?>                             
                    </div>
   
                </div>
               
            </div>
        </div>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7291206.939773624!2d35.37384962926955!3d26.834874363505413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14368976c35c36e9%3A0x2c45a00925c4c444!2z2YXYtdix!5e0!3m2!1sar!2seg!4v1512476921940" style="border:0" allowfullscreen></iframe>
    </section>-->
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>