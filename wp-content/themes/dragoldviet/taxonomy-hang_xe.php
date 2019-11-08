<?php

/**
 * Taxonomy template
 * Template Post Type: cars
 * To create different taxonomy templates, copy
 * this file and create a new...
 * Ex: taxonomy-cars.php
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
                        'post_type' => 'cars', // Your Post type Name that You Registered
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
                                        <div class="read_more">
                                            <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
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