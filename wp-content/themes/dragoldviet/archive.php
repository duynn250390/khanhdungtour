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
    <section class="main_content_tours">
        <div class="container content_bg">
            <?php
            if ($wp_query->have_posts()) : while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
                    <header class="header_article">
                        <h1><?php echo get_the_title() ?></h1>
                    </header>
                    <div class="main_info_tour">
                        <div class="slideshow_tour" id="slide_article">
                            <?php
                                    $images = get_post_meta($post->ID, 'tdc_gallery_id', true);
                                    foreach ($images as $image) {
                                        // $url_img =  wp_get_attachment_url($image, 'images_project');
                                        $url_img =  wp_get_attachment_url($image, 'large');
                                        $image_img = wp_get_attachment_image($image, 'large');
                                        ?>
                                <div class="item_slide">
                                    <?php echo $image_img; ?>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="detail_tour">
                            <div class="infos">
                                <div class="info_item">
                                    <div class="info_group">
                                        <label>Xuất phát:</label>
                                        <span><?php echo get_post_meta(get_the_ID(), '_diem_xuat_phat', TRUE); ?></span>
                                    </div>
                                    <div class="info_group">
                                        <label>Điểm đến:</label>
                                        <span><?php echo get_post_meta(get_the_ID(), '_diem_den', TRUE); ?></span>
                                    </div>

                                </div>
                                <div class="info_item">
                                    <div class="info_group">
                                        <label>Phương tiện:</label>
                                        <span>Máy bay</span>
                                    </div>
                                    <div class="info_group">
                                        <label>Thời gian:</label>
                                        <span><?php echo get_post_meta(get_the_ID(), '_thoi_gian_tour', TRUE); ?></span>
                                    </div>
                                </div>
                                <div class="info_item">
                                    <div class="info_group full">
                                        <label>Giá từ:</label>
                                        <span class="money"><?php echo get_post_meta(get_the_ID(), '_gia_tour', TRUE); ?> VND</span>
                                    </div>
                                </div>
                            </div>
                            <div class="contact_tour">
                                <div class="call_now">Gọi ngay</div>
                                <ul class="hotline">
                                    <li>0869906080</li>
                                    <li>-</li>
                                    <li>0906 434 432</li>
                                </ul>
                                <ul class="chat">
                                    <li class="chat_facebook chat_item"><a href="http://m.me/khanhdungtour">Hổ trợ</a></li>
                                    <li class="chat_zalo chat_item"><a href="https://zalo.me/0869906070">Hổ trợ</a></li>
                                </ul>
                                <p>để được tư vấn chi tiết về tour !</p>
                                <p>Chúc quý khách có những trải nghiệm thú vị cùng khanhdungtour</p>
                                <div class="control_boot_tours"><a href="" class="btn_book">Đặt tour</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="maincontent">
                        <div class="box_left article_content">
                            <article class="main_article">
                                <div class="heading_title">
                                    <h4>Lịch trình tour</h4>
                                </div>
                                <section class="body_article">
                                    <?php the_content(); ?>
                                </section>
                            </article>
                            <div class="tags entry_tags">
                                <span class="title_tags">Từ khóa:</span>
                                <?php
                                        $tags = wp_get_post_tags($post->ID);
                                        $count = 0;
                                        if ($tags) {
                                            foreach ($tags as $tag) {
                                                $count++; ?>
                                        <a href="<?php echo get_tag_link($tag->term_id) ?>"><?php echo $tag->name; ?></a>
                                <?php if ($count > 8) break;
                                            }
                                        } ?>
                            </div>
                            <div class="box_social">
                                <div class="title">Share:</div>
                                <ul class="main_sharing">
                                    <li class="_socila_fb">
                                        <a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo get_permalink(); ?> " target="_blank" rel="nofollow" onclick="window.open( this.href,'FBwindow','height=450, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes'); return false;">
                                        </a>
                                    </li>
                                    <li class="_socila_tw">
                                        <a href="http://www.twitter.com/share?url=<?php echo get_permalink(); ?>" target="_blank" rel="nofollow"" onclick=" window.open(this.href, 'TWwindow' , 'height=300, width=650, menubar=no,toolbar=no,resizable=yes,scrollbars=yes' );return false;">
                                        </a>
                                    </li>
                                    <li class="_socila_pri"><a href=""></a></li>
                                    <li class="_socila_zalo"><a href=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="box_right sidebar"><?php get_sidebar(); ?></div>
                    </div>
            <?php
                endwhile;
            endif;
            ?>
            <div class="read_more row">
                <div class="box_tour_more">
                    <?php
                    $category_detail =  get_the_category($post->ID);
                    $ID_Post = get_the_ID();
                    $args_my_query = array(
                        'cat' => $category_detail[0]->cat_ID,
                        'post_type'    =>    'tours',
                        'post_status' => 'publish',
                        'posts_per_page' => '6',
                        'order' => 'DESC',
                        'orderby' => 'date',
                        'post__not_in'         => array($ID_Post)
                    );
                    $more_news = new WP_Query($args_my_query);
                    while ($more_news->have_posts()) : $more_news->the_post();
                        $post_id = $post->ID; ?>
                        <article class="item_tour_more">
                            <figure class="main_thum">
                                <a href="<?php echo get_permalink(); ?>">
                                    <img class="img_thumb" src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                </a>
                            </figure>
                            <div class="detail_tour_more">
                                <div class="title_tour_more">
                                    <h3 class="title"><a href="<?php echo get_permalink(); ?>"><?php echo get_the_title(); ?></a></h3>
                                </div>
                            </div>
                        </article>
                    <?php endwhile;
                    wp_reset_postdata(); ?>
                </div>
            </div>
        </div>
    </section>
</div>
<?php
get_footer();
?>