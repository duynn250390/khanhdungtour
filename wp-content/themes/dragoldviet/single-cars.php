<?php

/**
 * Template Name: Cars
 * Template Post Type: cars
 */
get_header(); ?>
<div class="warap">
	<?php
	if (have_posts()) : while (have_posts()) : the_post();
			get_template_part('content', 'cars');
			setpostview(get_the_ID());

		endwhile ?>
	<?php else : ?>
		<?php
			echo 'hello';
			get_template_part('content', 'none');
			?>
	<?php endif; ?>
</div>

<?php
get_footer();
?>