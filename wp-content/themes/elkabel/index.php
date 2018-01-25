<?php get_header(); ?>
    <div class="page-content">
        <div class="main-slider style-two default-banner">   
                <?php echo do_shortcode('[metaslider id=17]'); ?>
		</div>
		<!-- Slider END -->
		<?php  
    if ( function_exists( 'ot_get_option' ) ) {
	  $title_about = ot_get_option( 'title_about' );
	  $description_about_1 = ot_get_option( 'description_about_1' );
	  $title_img_1 = ot_get_option( 'title_img_1' );
	  $img_1 = ot_get_option( 'img_1' );
	  $description_img_1 = ot_get_option( 'description_img_1' );
	  $title_img_2 = ot_get_option( 'title_img_2' );
	  $img_2 = ot_get_option( 'img_2' );
	  $description_img_2 = ot_get_option( 'description_img_2' );
	}
    ?>
        <!-- About Company -->
        <div class="section-full bg-white content-inner about3">
            <div class="container">
                <div class="section-content">
					<div class="row">
						<div class="col-md-12 col-sm-12 text-center about">
							<div class="m-b20">
								<h2 class="h2 m-t0"><?php echo $title_about; ?></h2>
							</div>
							<?php echo $description_about_1; ?>
						</div>
						<!--
						<div class="col-md-3 col-sm-6 m-b30">
							<div class="dez-box">
								<div class="dez-media ow-portfolio-img dez-img-overlay11 dez-img-effect"> <a href="#"><img src="<?php echo $img_1; ?>" alt=""></a> </div>
								<div class="dez-info">
									<h4 class="dez-title m-t20">
											<?php echo $title_img_1 ; ?>
									</h4>
									<?php echo $description_img_1; ?>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 m-b10">
							<div class="dez-box">
								<div class="dez-media ow-portfolio-img dez-img-overlay11 dez-img-effect"> <a href="#"><img src="<?php echo $img_2; ?>" alt=""></a> </div>
								<div class="dez-info">
									<h4 class="dez-title m-t20"><?php echo $title_img_2 ; ?></h4>
									<?php echo $description_img_2; ?>
								</div>
							</div>
						</div>-->
					</div>
                </div>
            </div>
        </div>
        <!-- About Company END -->
		<?php
			$cats = [];
						$args = array(
								'post_type' => 'product',
								'posts_per_page' => 4,
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
        <div class="section-full bg-img-fix content-inner overlay-black-middle our-projects-galery" style="background-color: #3a2416;">
            <div class="container">
                <div class="section-head  text-center text-white">
                    <h2 class="h2"><?php
							$lang = custom_get_current_lang();
							if($lang == 'ar'){
								echo 'الزراعة'; 
								}elseif($lang == 'en'){
								echo 'Farming'; 
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
						<h2 class="product_title"><?php the_title() ?></h2>
					</a>
						<a href="<?php the_permalink(); ?>" class="button product_type">
							<?php
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
        </div>
        <!-- Our Projects END -->
				<?php
			$cats = [];
						$args = array(
								'post_type' => 'news',
								'posts_per_page' => 4,
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
        <div class="section-full bg-img-fix content-inner overlay-black-middle our-projects-galery" style="background-color: #3a2416;    border-top: 4px solid #f9b414;">
            <div class="container">
                <div class="section-head  text-center text-white">
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
						<h2 class="product_title"><?php the_title() ?></h2>
					</a>
						<a href="<?php the_permalink(); ?>" class="button product_type">
							<?php
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
        </div>
        <!-- Client logo -->
        <div class="section-full dez-we-find bg-img-fix p-t50 p-b50 ">
            <div class="container">
                <div class="section-content">
                   <?php echo do_shortcode('[logo-slider]'); ?>

                </div>
            </div>
        </div>
        <!-- Client logo END -->
    </div>
    <!-- Content END-->
	
	
<?php get_footer(); ?>