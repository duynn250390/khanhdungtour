<?php

/**
 * Taxonomy template
 * To create different taxonomy templates, copy
 * this file and create a new...
 * Ex: taxonomy-my_custom_tax.php
 */
get_header(); ?>

<?php
// get some info about the term queried

$queried_object = get_queried_object();

$taxonomy = $queried_object->taxonomy;
$term_id = $queried_object->term_id;
$term_slug = $queried_object->slug;
?>
<div class="warap">
    <section class="content_search mien_local">
        <div class="container">
            <div id="breadcrumbs" class="breadcrumbs search">
                <div class="list">
                    <a href="<?php echo get_site_url(); ?>" class="home">Trang chủ</a>
                    <span class="breadcrumb_last" aria-current="page"><?php echo get_queried_object()->name; ?></span>
                </div>
            </div>
            <div class="sub_content_search taxonamy">
                <div class="content_left_search">
                    <?php
                    get_sidebar('news');
                    ?>
                </div>
                <div class="content_right_search">
                    <?php
                    // print_r($queried_object);
                    $al_tax_post_args = array(
                        'post_type' => 'tours', // Your Post type Name that You Registered
                        'tax_query' => array(
                            array(
                                'taxonomy' => $taxonomy,
                                'field' => 'term_id',
                                'terms' => $term_id
                            )
                        )
                    );
                    $al_tax_post_qry = new WP_Query($al_tax_post_args);
                    if ($al_tax_post_qry->have_posts()) :
                        while ($al_tax_post_qry->have_posts()) :
                            $al_tax_post_qry->the_post();
                            $post_id = $post->ID;
                            $local_tour = get_post_meta(get_the_ID(), '_diem_xuat_phat', TRUE);
                            $time_tour = get_post_meta(get_the_ID(), '_thoi_gian_tour', TRUE);
                            $diem_den = get_post_meta(get_the_ID(), '_diem_den', TRUE);
                            $gia_tour = get_post_meta(get_the_ID(), '_gia_tour', TRUE);
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
                                            <li class="price">Già từ:<span><?php echo $gia_tour; ?> VND</span></li>
                                        </ul>
                                        <div class="read_more">
                                            <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                            <!-- <div class="main_info_tour">
                                <div class="slideshow_tour">
                                    <a href="<?php echo get_permalink($post->ID); ?>">
                                        <?php
                                                if (has_post_thumbnail()) {
                                                    echo get_the_post_thumbnail($post->ID, 'square_smallc_thumbnail');
                                                } ?>
                                    </a>
                                </div>
                                <div class="detail_tour">
                                    <div class="infos">
                                        <h1 class="heading"><a href="<?php echo get_permalink($post->ID); ?>"><?php echo get_the_title() ?></a></h1>
                                        <div class="content">
                                            <?php the_excerpt(); ?>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                    <?php
                        endwhile;
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </section>
</div>
<?php
get_footer();
?>