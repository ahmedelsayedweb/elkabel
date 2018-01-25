<?php
/**
 * Template Name: Page news of equipment Template
 * Template Post Type: page
 * The template for displaying Page Home
 */
?>
<?php get_header(); ?>
    <section class="welcome-section">
    	<div class="col-sm-12">
        	<div class="container">
				
            	<!-- About Company END -->
		<?php
			$cats = [];
						$args = array(
								'post_type' => 'news',
								'posts_per_page' => 100,
						);
						$product_query = new WP_Query( $args );
							 ?>
						<?php if ( $product_query->have_posts() ) : ?>
			<?php $i = 1; ?>
							<?php while ($product_query->have_posts()) : $product_query->the_post(); 
			$categories = get_the_category();
			$cats = array_merge($cats, $categories);
			?>
			<?php endwhile; endif; ?>
				
        <!-- Our Projects  -->
            <div class="container">
				<div class="section-head text-center">
                    <h2 class="h2"><?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo 'العقارات'; 
								}elseif($lang == 'en'){
								echo 'Property'; 
							};
								?></h2>
					<div class="dez-separator-outer"><div class="dez-separator bg-primary style-liner"></div> </div>
                </div>
                <div class="row">
					<?php if ( $product_query->have_posts() ) : ?>
						 <?php $i = 1; ?>
							<?php while ($product_query->have_posts()) : $product_query->the_post(); ?>
					<div class="col-md-3 products">
					<a href="<?php the_permalink(); ?>" class="product__link">
						<img src="<?php the_post_thumbnail_url(); ?>" class="wp_post_image" />
						<h2 class="product_titl"><?php the_title() ?></h2>
					</a>
						<div class="color_p">
						<?php the_excerpt(); ?>
						</div> 
						<a href="<?php the_permalink(); ?>" class="button product_type"><?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo 'اعرف المزيد'; 
								}elseif($lang == 'en'){
								echo 'Read More'; 
							};
								?></a>
					</div> 
<?php $i++;
									?>
								<?php endwhile; endif; ?>
                </div>
            </div>
        <!-- Our Projects END -->
            </div>
        </div>
    </section>
    <!--End Welcome Section-->
<?php get_footer(); ?>