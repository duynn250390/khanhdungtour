<?php

/**
 * Template Name: Bài Viết
 * Template Post Type: post
 * @package WordPress
 * @subpackage nnDuy
 * @since News_nnDuy
 */

get_header();
?>
<div class="warap">
    <section class="content_search">
        <div class="container">
            <div id="breadcrumbs" class="breadcrumbs search">
                <div class="list">
                    <a href="<?php echo get_site_url(); ?>" class="home">Trang chủ</a>
                    <span class="breadcrumb_last" aria-current="page">Kết quả tìm kiếm </span>
                </div>
            </div>
            <div class="sub_content_search">
                <div class="content_left_search">
                    <?php
                    get_sidebar('search-tour');
                    ?>
                </div>
                <div class="content_right_search">
                    <?php
                    if (isset($_GET['vung-mien'])) {
                        $vung_mien = $_GET['vung-mien'];
                    } else {
                        $vung_mien = '';
                    }
                    if (isset($_GET['diem-den'])) {
                        $key_diem_den = $_GET['diem-den'];
                    } else {
                        $key_diem_den = '';
                    }
                    if (isset($_GET['tu-khoa-tim-kiem'])) {
                        $key_txt_search = $_GET['tu-khoa-tim-kiem'];
                    } else {
                        $key_txt_search = '';
                    }
                    if (isset($_GET['post-type'])) {
                        $post_type = $_GET['post-type'];
                    } else {
                        $post_type = 'post';
                    }
                    $args = array(
                        's' => $s,
                        'post_type'    =>  $post_type,
                        'post_status' => 'publish',
                        'orderby' => 'rand',
                        'order'    => 'ASC',
                        'meta_query' => array(
                            'relation' => 'OR',
                            array(
                                'key' => '_diem_den',
                                'value' => $key_diem_den,
                                'compare' => 'LIKE',
                            ),
                            array(
                                'key' => '_vung_mien',
                                'value' => $vung_mien,
                                'compare' => 'LIKE',
                            ),
                        ),
                    );
                    $search_query = new WP_Query($args);
                    ?>
                    <?php echo get_post_format(); ?>
                    <?php if ($search_query->post_count > 0) : ?>
                        <?php while ($search_query->have_posts()) : $search_query->the_post();
                                $post_id = $post->ID; ?>
                            <?php get_template_part('content', 'search-tours'); ?>
                        <?php endwhile ?>
                    <?php else : ?>
                        <div class="box_none_result">
                            <p><?php echo $search_query->post_count; ?> kết quả phù hợp</p>
                            <div class="no_result">Không tìm thấy kết quả</div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
get_footer();
?>