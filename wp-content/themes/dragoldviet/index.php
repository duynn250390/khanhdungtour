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
                    <div class="main_search">
                        <div class="tabs_search">
                            <div class="item_tab tab_sty_03 active" data-tab="1">Tìm Tour</div>
                            <div class="item_tab tab_sty_03" data-tab="2">Thuê xe</div>
                        </div>
                        <div class="content_form_search">
                            <div class="content_form active" id="tabs_1">
                                <div class="form_group control_list_form">
                                    <div class="item_form_group select_control item_form_group03">
                                        <select>
                                            <option value="0">Hình thức tour</option>
                                            <option value="0">Tour trong nước</option>
                                            <option value="0">Tour nước ngoài</option>
                                        </select>
                                    </div>
                                    <div class="item_form_group select_control item_form_group03">
                                        <?php
                                        $term_diem_dens = get_terms(array(
                                            'taxonomy' => 'tinh',
                                            'hide_empty' => false,
                                            'parent' => 0,
                                        ));
                                        echo '<select  name="diem_den_head" id="diem_den_head" class="code">';
                                        echo '<option value="0">Chọn điểm đến</option>';
                                        foreach ($term_diem_dens as $term_diem_den) { ?>
                                         <option value="<?php echo $term_diem_den->name ?>" } ?><?php echo $term_diem_den->name ?></option>
                                        <?php }
                                        echo '</select>'; ?>
                                    </div>
                                    <div class="item_form_group">
                                        <input type="text" placeholder="Nhập địa điểm muốn đến...">
                                    </div>
                                </div>
                                <div class="form_group control_btn_from">
                                    <button class="btn_submit btn btn01">Tìm kiếm</button>
                                </div>
                            </div>
                            <div class="content_form" id="tabs_2">
                                <div class="form_group control_list_form">
                                    <div class="item_form_group select_control item_form_group03">
                                        <select>
                                            <option value="0">Loại xe</option>
                                            <option value="0">Xe 4 chỗ</option>
                                            <option value="0">Xe 6 chỗ</option>
                                            <option value="0">Xe 45 chỗ</option>
                                        </select>
                                    </div>
                                    <div class="item_form_group select_control item_form_group03">
                                        <select>
                                            <option value="0">Chọn hãng xe</option>
                                            <option value="0">Yamaha</option>
                                            <option value="0">Vinfast</option>
                                            <option value="0">Khác</option>
                                        </select>
                                    </div>
                                    <div class="item_form_group">
                                        <input type="text" placeholder="Nhập tên xe...">
                                    </div>
                                </div>
                                <div class="form_group control_btn_from">
                                    <button class="btn_submit btn btn01">Tìm kiếm</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content_home content content_event">
        <div class="container">
            <div class="show_event " id="show_event">
                <div class="listEvent">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/1.png" alt="slideshow" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/2.png" alt="slideshow" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/3.png" alt="slideshow" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/4.png" alt="slideshow" />
                    </a>
                </div>
                <div class="listEvent">
                    <a href="">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/share/5.png" alt="slideshow" />
                    </a>
                </div>
            </div>
        </div>
    </section>
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
                        <a href="">
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
                        <a href="">
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
                        <a href="">
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
    <section class="content content_home content_list_tour">
        <div class="container">
            <div class="box_warap_content ">
                <div class="heading_wrapper">
                    <h2 class="main_title"><span><strong>Tour</strong> nổi bật</span></h2>
                    <p class="main_des"><span>Homes highly rated for thoughtful design</span></p>
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
                                        <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
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
                                            <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                        </div>
                                    </article>
                                </div>
                            <?php endwhile;
                            else : ?>
                            <p>Không có tin nào !</p>
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