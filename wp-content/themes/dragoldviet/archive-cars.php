<?php

/**
 * Template Post Type: cars
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header(); ?>
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
    <div class="container">
        <div class="box_main box_news">
            <div class="box_left">
                <div class="list_tours_tours list_cars_cars">
                    <?php
                    $args = array(
                        'post_type' => 'cars',
                        'showposts' => 20,
                        'order'    => 'DESC'
                    );
                    $the_query = new WP_Query($args);
                    while ($the_query->have_posts()) : $the_query->the_post();
                        $post_id = $post->ID;

                        $loai_xe = get_post_meta(get_the_ID(), '_loai_xe', TRUE);
                        $doi_xe = get_post_meta(get_the_ID(), '_doi_xe', TRUE);
                        $hop_so = get_post_meta(get_the_ID(), '_hop_so', TRUE);
                        $gia_xe = get_post_meta(get_the_ID(), '_gia_xe', TRUE);
                        ?>
                        <div class="post_post">
                            <article id="post-<?php the_ID(); ?>" class="post_item_cate_tour">
                                <figure class="img_thumb">
                                    <?php if (has_post_thumbnail()) : ?>
                                        <a href="<?php echo get_permalink(); ?>">
                                            <img src="<?php echo the_post_thumbnail_url('square_smallc_thumbnail'); ?>" alt="<?php echo get_the_title(); ?>">
                                        </a>
                                    <?php endif ?>
                                </figure>
                                <div class="tour_info">
                                    <header class="head_box">
                                        <h2 class="entry_title"><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h2>
                                    </header>
                                    <ul class="list_info">
                                        <li class="local"><?php echo $loai_xe; ?></li>
                                        <li class="date"><?php echo $doi_xe; ?></li>
                                        <li class="fa_co">
                                            <ul class="local_start_end">
                                                <li class="local_start"><?php echo $hop_so; ?></li>
                                            </ul>
                                        </li>
                                        <li class="price">Già từ:<span><?php echo $gia_xe; ?> VND</span></li>
                                    </ul>
                                </div>
                            </article>
                        </div>
                    <?php endwhile;
                    wp_reset_postdata(); ?>
                </div>
            </div>
            <div class="box_right">
                <?php get_sidebar('news'); ?>
            </div>
        </div>
    </div>

</div>
</div>
<?php get_footer(); ?>