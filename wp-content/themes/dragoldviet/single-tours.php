<?php

/**
 * Template Name: Tours
 * Template Post Type: tours
 */
get_header(); ?>
<div class="warap">
	<!-- <?php the_title(); ?> -->
	<?php echo get_post_format(); ?>
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
			<?php
					get_template_part('content', 'tours');
					setpostview(get_the_ID());
					?>
		<?php endwhile ?>
	<?php else : ?>
		<?php get_template_part('content', 'none'); ?>
	<?php endif; ?>
</div>

<?php
get_footer();
?>