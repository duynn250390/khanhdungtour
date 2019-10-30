<?php

/**
 * Template Name: Tours
 * Template Post Type: tours
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>
<div class="warap">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
            <?php get_template_part('content', 'tours'); ?>
            <?php setpostview(get_the_ID()); ?>
        <?php endwhile ?>
    <?php else : ?>
        <?php get_template_part('content', 'none'); ?>
    <?php endif; ?>
</div>
<?php
get_footer();
?>