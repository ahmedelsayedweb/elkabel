<?php
/**
 * Template Name: Page login Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
<section class="contact-form-section">
    	<div class="auto-container">
        	<div class="row clearfix">
            	<!--Form Column-->
                <div class="form-column col-sm-12 col-xs-12 pull-right">
                	
                    <!-- contact Form -->
                    <div class="contact-form">
                            
                        <div class="sec-title">
                            <h2><?php the_title(); ?></h2>
                            <div class="separator"></div>
                        </div>  
						 <?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								 echo do_shortcode('[contact-form-7 id="65" title="login ar"]');
								}elseif($lang == 'en'){
								echo do_shortcode('[contact-form-7 id="64" title="login en"]');
							};
							?>                              
                    </div>
                    <!--End Contact Form -->
                    
                </div>
                <!--image column-->
            </div>
        </div>
    </section>
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>