<?php
get_header();
?>

<div class="warap">
    <section class="slideshow">
        <div class="main_slideshow" id="main_slideshow">
            <div class="item_sli">
                <img src="<?php echo get_template_directory_uri() ?>/public/images/slideshow/bg1.jpg" alt="slideshow" />
            </div>
            <div class="item_sli">
                <img src="<?php echo get_template_directory_uri() ?>/public/images/slideshow/bg2.jpg" alt="slideshow" />
            </div>
            <div class="item_sli">
                <img src="<?php echo get_template_directory_uri() ?>/public/images/slideshow/bg3.jpg" alt="slideshow" />
            </div>
        </div>
        <div class="main_search">
            <div class="content_ner_sear">
                <div class="container">
                    <?php include plugin_dir_path(__FILE__) . 'subdir/search-index.php'; ?>
                </div>
            </div>
        </div>
    </section>
    <section class="content_home content content_event">
        <div class="container">
            <div class="show_event " id="show_event">
                <?php
                $args = array(
                    'post_type' => 'banners',
                    'showposts' => 6,
                    'order'    => 'DESC',
                );
                $the_query = new WP_Query($args);
                if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                        $post_id = $post->ID;
                        $link_to = get_post_meta(get_the_ID(), '_link_to', TRUE);
                        ?>
                        <div class="listEvent">
                            <a href="<?php echo $link_to; ?>">
                                <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                            </a>
                        </div>
                    <?php endwhile;
                    else : ?>
                    <p>Không có tin nào !</p>
                <?php endif;
                wp_reset_postdata(); ?>
            </div>
        </div>
    </section>
    <!-- <section class="content_home content content_event">
        <div class="container">
            <div class="show_event " id="show_event">
                <div class="listEvent">
                    <a href="https://khanhdungtour.com/tours/tour-da-nang-cu-lao-cham-1-ngay/">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/cu-lao-cham-tour.png" alt="tour cù lao chàm" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="https://khanhdungtour.com/tours/tour-da-nang-hoi-an-1-ngay/">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/hoi-an-tour.png" alt="tour du lịch hội an" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="https://khanhdungtour.com/tours/tour-da-nang-hue-1-ngay/">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/hue-tour.png" alt="tour du lịch Huế" />
                    </a>
                </div>
            </div>
        </div>
    </section> -->
    <section class="content_home content_service content">
        <div class="container">
            <div class="service_mycom">
                <div class="heading_main">
                    <h2>
                        <span class="fist_spa">Dịch vụ của</span>
                        <span class="secnd_spa">Khánh dung tour</span>
                    </h2>
                </div>
                <div class="description">
                    <p>KHÁNH DUNG TOUR chuyên tổ chức các chương trình du lịch trong và ngoài nước, chương trình sự kiện, hội nghị hội
                        thảo, teambuilding, từ đơn giản đến phức tạp. Với cách tổ chức chuyên nghiệp, chất lượng dịch vụ đặt lên hàng đầu.
                        KHÁNH DUNG TOUR luôn mang đến cho Quý khách hàng những sản phẩm tuyệt vời nhất. Hãy luôn đồng hành cùng KHÁNH DUNG TOUR !!!</p>
                </div>
                <div class="list_service row">
                    <div class="item_list">
                        <a href="<?php bloginfo('url') ?>/mien/du-lich-mien-bac/">
                            <div class="heading_service">
                                Du lịch miền bắc
                            </div>
                            <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-bac.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <div class="destopn_service">
                                <p class="des">Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit and seltd tasm cursus nunc.</p>
                                <span class=" btn btn01">Chi tiết</span>
                            </div>
                        </a>
                    </div>
                    <div class="item_list">
                        <a href="<?php bloginfo('url') ?>/mien/du-lich-mien-trung/">
                            <div class="heading_service">
                                Du lịch miền Trung
                            </div>
                            <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-trung.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <div class="destopn_service">
                                <p class="des">Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit and seltd tasm cursus nunc.</p>
                                <span class=" btn btn02">Chi tiết</span>
                            </div>
                        </a>
                    </div>
                    <div class="item_list">
                        <a href="<?php bloginfo('url') ?>/mien/du-lich-mien-nam/">
                            <div class="heading_service">
                                Du lịch miền Nam
                            </div>
                            <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-nam.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <div class="destopn_service">
                                <p class="des">Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit and seltd tasm cursus nunc.</p>
                                <span class=" btn btn03">Chi tiết</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content content_home content_list_tour dailytour">
        <div class="container">
            <div class="box_warap_content ">
                <div class="heading_wrapper">
                    <h2 class="main_title"><span><strong>Tour</strong> hàng ngày</span></h2>
                    <p class="main_des"><span>Nhiều tour được tổ chức đi về trong ngày rất thú vị </span></p>
                </div>
                <div class="list_tour row dailytour" id="dailytour">
                    <?php
                    $args = array(
                        'post_type' => 'tours',
                        'showposts' => 6,
                        'order'    => 'DESC',
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'daytour',
                                'field' => 'slug',
                                'terms' => 'open-daily-tour'
                            )
                        )
                    );
                    $the_query = new WP_Query($args);
                    if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                            $post_id = $post->ID;
                            $local_tour = get_post_meta(get_the_ID(), '_diem_xuat_phat', TRUE);
                            $time_tour = get_post_meta(get_the_ID(), '_thoi_gian_tour', TRUE);
                            $diem_den = get_post_meta(get_the_ID(), '_diem_den', TRUE);
                            $gia_tour = get_post_meta(get_the_ID(), '_gia_tour', TRUE);
                            ?>
                            <div class="item_list_tour">
                                <figure class="tour_thumb">
                                    <a href="<?php echo the_permalink(); ?>">
                                        <div class="image">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                        </div>
                                    </a>
                                </figure>
                                <figcaption class="content_tour">
                                    <h5 class="title"><?php the_title(); ?></h5>
                                    <ul class="list_info">
                                        <li class="local"><?php echo $diem_den; ?></li>
                                        <li class="date"><?php echo $time_tour; ?></li>
                                        <li class="fa_co">
                                            <ul class="local_start_end">
                                                <li class="local_start"><?php echo $local_tour; ?></li>
                                                <li class="local_end"><?php echo $diem_den; ?></li>
                                            </ul>
                                        </li>
                                        <li class="price">Giá từ:<span> <?php echo $gia_tour; ?> VND</span></li>
                                    </ul>
                                    <div class="read_more">
                                        <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                    </div>
                                </figcaption>
                            </div><!-- item_list_tour -->
                        <?php endwhile;
                        else : ?>
                        <p>Không có tin nào !</p>
                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </div>
        </div>
    </section>
    <section class="content content_home content_list_tour">
        <div class="container">
            <div class="box_warap_content ">
                <div class="heading_wrapper">
                    <h2 class="main_title"><span><strong>Tour</strong> nổi bật</span></h2>
                    <p class="main_des"><span>Những tour du lịch không thể bỏ qua trong thời điểm này</span></p>
                </div>
                <div class="list_tour row">
                    <?php
                    $args = array(
                        'post_type' => 'tours',
                        'showposts' => 6,
                        'order'    => 'DESC'
                    );
                    $the_query = new WP_Query($args);
                    if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                            $post_id = $post->ID;
                            $local_tour = get_post_meta(get_the_ID(), '_diem_xuat_phat', TRUE);
                            $time_tour = get_post_meta(get_the_ID(), '_thoi_gian_tour', TRUE);
                            $diem_den = get_post_meta(get_the_ID(), '_diem_den', TRUE);
                            $gia_tour = get_post_meta(get_the_ID(), '_gia_tour', TRUE);
                            ?>
                            <div class="item_list_tour">
                                <figure class="tour_thumb">
                                    <a href="<?php echo the_permalink(); ?>">
                                        <div class="image">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                        </div>
                                    </a>
                                </figure>
                                <figcaption class="content_tour">
                                    <h5 class="title"><?php the_title(); ?></h5>
                                    <ul class="list_info">
                                        <li class="local"><?php echo $diem_den; ?></li>
                                        <li class="date"><?php echo $time_tour; ?></li>
                                        <li class="fa_co">
                                            <ul class="local_start_end">
                                                <li class="local_start"><?php echo $local_tour; ?></li>
                                                <li class="local_end"><?php echo $diem_den; ?></li>
                                            </ul>
                                        </li>
                                        <li class="price">Giá từ:<span> <?php echo $gia_tour; ?> VND</span></li>
                                    </ul>
                                    <div class="read_more">
                                        <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                    </div>
                                </figcaption>
                            </div><!-- item_list_tour -->
                        <?php endwhile;
                        else : ?>
                        <p>Không có tin nào !</p>
                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </div>
        </div>
    </section>
    <section class="more_div">
        <div class="container">
            <div class="hiaha">
                <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- quangcaotrangchukhanhdung -->
                <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-2471616157718830" data-ad-slot="3884677998" data-ad-format="auto" data-full-width-responsive="true"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>
        </div>
    </section>
    <section class="content content_home content_list_tour dailytour rent_car">
        <div class="container">
            <div class="box_warap_content ">
                <div class="heading_wrapper">
                    <h2 class="main_title"><span><strong>Xe cho thuê</strong> tự lái</span></h2>
                    <p class="main_des"><span>Dịch vụ cho thuê xe tự lái và đón tiển sân bay </span></p>
                </div>
                <div class="list_tour row rent_car_list dailytour" id="rent_car">
                    <?php
                    $args = array(
                        'post_type' => 'cars',
                        'showposts' => 6,
                        'orderby' => 'rand',
                        'order'    => 'ASC'

                    );
                    $the_query = new WP_Query($args);
                    if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                            $post_id = $post->ID;
                            $loai_xe = get_post_meta(get_the_ID(), '_loai_xe', TRUE);
                            $doi_xe = get_post_meta(get_the_ID(), '_doi_xe', TRUE);
                            $hop_so = get_post_meta(get_the_ID(), '_hop_so', TRUE);
                            $gia_xe = get_post_meta(get_the_ID(), '_gia_xe', TRUE);
                            ?>
                            <div class="item_list_tour">
                                <figure class="tour_thumb">
                                    <a href="<?php echo the_permalink(); ?>">
                                        <div class="image">
                                            <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                        </div>
                                    </a>
                                </figure>
                                <figcaption class="content_tour">
                                    <h5 class="title"><?php the_title(); ?></h5>
                                    <ul class="list_info">
                                        <li class="local loai_xe">
                                            <span>Loại xe:</span>
                                            <?php echo $loai_xe; ?></li>
                                        <li class="local doi_xe">
                                            <span>Đời xe:</span>
                                            <?php echo $doi_xe; ?></li>
                                        <li class="local shop_so">
                                            <span>Hộp số:</span>
                                            <?php echo $hop_so; ?></li>
                                        <li class="price">Giá từ:<span><?php echo $gia_xe; ?> VND</span></li>
                                    </ul>
                                    <div class="read_more">
                                        <a href="<?php echo the_permalink(); ?>" class="btn_read_more">Chi tiết</a>
                                    </div>
                                </figcaption>
                            </div><!-- item_list_tour -->
                        <?php endwhile;
                        else : ?>
                        <p>Không có tin nào !</p>
                    <?php endif;
                    wp_reset_postdata(); ?>
                </div>
            </div>
        </div>
    </section>
    <section class="content content_home content_news">
        <div class="gradiend_bg gradient_top "></div>
        <div class="gradiend_bg gradient_bot"></div>
        <div class="bg_gra">
            <div class="ovelay"></div>
            <div class="container ">
                <div class="news_container ">
                    <div class="heading_wrapper">
                        <h2 class="main_title"><span><strong>Sổ tay</strong> du lịch</span></h2>
                    </div>
                    <div class="list_news row" id="list_news">
                        <?php
                        $args = array(
                            'post_type' => 'post',
                            'showposts' => 9,
                            'order'    => 'DESC'
                        );
                        $the_query = new WP_Query($args);
                        if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                                $post_id = $post->ID; ?>
                                <div class="item_news">
                                    <article class="post_news">
                                        <figure class="thumb_news">
                                            <a href="<?php echo the_permalink(); ?>">
                                                <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                            </a>
                                        </figure>
                                        <div class="content">
                                            <ul class="info_news">
                                                <?php
                                                        $category = get_the_category($id); ?>
                                                <li class="cate">
                                                    <a href="<?php echo get_category_link($category[0]->cat_ID) ?>"><?php echo $category[0]->cat_name ?></a>
                                                </li>
                                                <?php ?>
                                                <li class="date">
                                                    <?php
                                                            $post_date = get_the_date('d-m-Y');
                                                            echo $post_date; ?>
                                                </li>
                                            </ul>
                                            <h4 class="title"><a href="<?php echo the_permalink(); ?>"><?php the_title(); ?></a></h4>
                                            <div class="read_more"><a href="<?php echo the_permalink(); ?>" class="btn_read">Chi tiết</a></div>
                                        </div>
                                    </article>
                                </div>
                            <?php endwhile;
                            else : ?>
                            <p>Đang cập nhật.. !</p>
                        <?php endif;
                        wp_reset_postdata(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
get_footer();
?>