<div class="container">
    <div class="box_main box_news">
        <div class="breadcrumb single_breadcrumb">
            <div class="breadcrumbs">
                <?php
                if (function_exists('yoast_breadcrumb')) {
                    yoast_breadcrumb('<p id="breadcrumbs">', '</p>');
                }
                ?>
            </div>
        </div>
        <div class="box_left">
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <header class="entry-header">
                    <h1 class="title"><?php the_title(); ?></h1>
                </header>
                <div class="entry-content">
                    <?php the_content(); ?>
                </div>
            </article>
            <div class="tags entry_tags">
                <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- quangcaotrongbaivietkhanhdung -->
                <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-2471616157718830" data-ad-slot="1742069699" data-ad-format="auto" data-full-width-responsive="true"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>
            <div class="box_news_more">
                <div class="heading_news_more">Bài viết liên quan</div>
                <ul class="list_new_more">
                    <?php
                    $category_detail =  get_the_category($post->ID);
                    $ID_Post = get_the_ID();
                    $args_my_query = array(
                        'post_type'    =>    'post',
                        'post_status' => 'publish',
                        'posts_per_page' => '6',
                        'order' => 'DESC',
                        'orderby' => 'date',
                        'post__not_in'         => array($ID_Post)
                    );
                    $more_news = new WP_Query($args_my_query);
                    while ($more_news->have_posts()) : $more_news->the_post();
                        $post_id = $post->ID; ?>
                        <li class="item_news_more">
                            <a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a>
                        </li>
                    <?php endwhile;
                    wp_reset_postdata(); ?>
                </ul>
            </div>
        </div>
        <div class="box_right">
            <?php get_sidebar('news'); ?>
        </div>
    </div>

</div>