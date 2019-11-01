<?php get_header(); ?>
<div class="warap">
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
                <div class="list_tours_tours">
                    <?php
                    $args = array(
                        'post_type' => 'tours',
                        'showposts' => 20,
                        'order'    => 'DESC'
                    );
                    $the_query = new WP_Query($args);
                    while ($the_query->have_posts()) : $the_query->the_post();
                        $post_id = $post->ID;
                        $local_tour = get_post_meta(get_the_ID(), '_diem_xuat_phat', TRUE);
                        $time_tour = get_post_meta(get_the_ID(), '_thoi_gian_tour', TRUE);
                        $diem_den = get_post_meta(get_the_ID(), '_diem_den', TRUE);
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
                                        <li class="local"><?php echo $diem_den; ?></li>
                                        <li class="date"><?php echo $time_tour; ?></li>
                                        <li class="fa_co">
                                            <ul class="local_start_end">
                                                <li class="local_start"><?php echo $local_tour; ?></li>
                                                <li class="local_end"><?php echo $diem_den; ?></li>
                                            </ul>
                                        </li>
                                        <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                                    </ul>
                                    <div class="read_more">
                                        <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                    </div>
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