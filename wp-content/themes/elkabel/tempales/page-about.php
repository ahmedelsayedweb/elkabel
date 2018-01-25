<?php
/**
 * Template Name: Page about Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
<?php while ( have_posts() ) : the_post(); ?>
    <section class="welcome-section">
    	<div class="col-sm-12">
        	<div class="container">
            	<!--Content Column-->
            	<div class="content-column col-sm-12 col-xs-12">
                	<div class="inner-box">
						<div class="image">
                        	<img src="<?php the_post_thumbnail_url(); ?>" alt="" />
                        </div>
                        <!--Sec Title-->
                        <div class="sec-title">
                            <h2><?php the_title(); ?></h2>
                            <div class="separator"></div>
                        </div>
                        <div class="text">
							<?php the_content();?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Welcome Section-->
<?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>
<?php get_footer(); ?>