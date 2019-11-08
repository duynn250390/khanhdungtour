<?php

get_header();
?>
<div class="warap">
    <?php if (have_posts()) : while (have_posts()) : the_post();
            $postTYPE = get_post_type(get_the_ID());?>
            <!-- echo $postTYPE;
            if ($postTYPE == 'tours') {
                get_template_part('content', 'tours');
            } else if ($postTYPE == 'cars') {
                get_template_part('content', 'cars');
            } -->
            
            <?php  get_template_part( 'content', get_post_format());?>
            <?php setpostview(get_the_ID()); ?>
        <?php endwhile ?>
    <?php else : ?>
        <?php get_template_part('content', 'none'); ?>
    <?php endif; ?>
</div>
<?php
get_footer();
?>