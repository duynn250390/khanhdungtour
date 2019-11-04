<?php
/*
 Template Name: Column 2
 */
?>
<?php get_header(); ?>
<div class="warap">
    <section class="breakcrumm_ss">
        <div class="container">
            <div class="breadcrumbs">
                <?php
                if (function_exists('yoast_breadcrumb')) {
                    yoast_breadcrumb('<p id="breadcrumbs">', '</p>');
                }
                ?>
            </div>
        </div>
    </section>
    <section class="content_page_main colum_2">
        <div class="container">
            <div class="box_main box_news">
                <div class="box_left">
                    <?php get_sidebar('news'); ?>
                </div>
                <div class="box_right">
                    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                            <div class="title_post">
                                <h1><?php the_title() ?></h1>
                            </div>
                            <article class="content_post body_article">
                                <?php the_content() ?>
                            </article>
                        <?php endwhile ?>
                    <?php else : ?>
                        <?php get_template_part('content', 'none'); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </section>
</div>

<?php get_footer(); ?>