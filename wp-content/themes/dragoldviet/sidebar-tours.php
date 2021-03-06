<aside class="wiget wiget-searc-tours">
    <header>
        <h1 class="widget-title">Tìm kiếm tour</h1>
    </header>
    <section class="body_widget">
        <form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
            <input name="post-type" type="hidden" value="tours">
            <div class="fomr_search">
                <div class="group_form">
                    <label for="txt_diem_den">Bạn muốn du lịch đến</label>
                    <div class="control_in in_chu">
                        <select class="diem-den" id="txt_diem_den" name="diem-den">
                            <?php
                            $terms = get_terms(array(
                                'taxonomy' => 'tinh',
                                'hide_empty' => false,
                                'parent' => 0,
                            ));
                            echo '<option value="0">--Chọn điểm đến--</option>';
                            foreach ($terms as $term) { ?>
                                <option value="<?php echo $term->name ?>" data_dia_diem="<?php echo $term->term_id ?>"><?php echo $term->name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="group_form">
                    <label for="dia_danh_du_lich">Điểm du lịch</label>
                    <div class="control_in in_three">
                        <input name="s" type="text" id="dia_danh_du_lich" name="dia_danh_du_lich" placeholder="Nhập nội dung cần tìm..." />
                    </div>
                </div> 
                <div class="group_form">
                    <button type="submit" class="btn_submit_search">Tìm kiếm</button>
                </div>
            </div>
        </form>
    </section>
</aside>
<aside class="wiget wiget-searc-tours">
    <header>
        <h1 class="widget-title">Cùng địa điểm</h1>
    </header>
    <section class="body_widget">
        <ul class="tour_links">
            <?php
            $ten_tinh =  get_post_meta(get_the_ID(), '_diem_den', TRUE);

            $category = get_term_by('name', $ten_tinh, 'tinh');
            $thisID = get_the_ID();
            $args = array(
                'post_type' => 'tours',
                'showposts' => 5,
                'post_not_in' => array($thisID),
                'orderby' => 'rand',
                'order'    => 'DESC',
                'tax_query' => array(
                    'taxonomy' => 'tinh',
                    // 'field' => $ten_tinh,
                    'terms' => $category->term_id,

                )
            );
            $the_query = new WP_Query($args);
            if ($the_query->have_posts()) : while ($the_query->have_posts()) : $the_query->the_post();
                    $post_id = $post->ID;
                    ?>
                    <li class="item_tour_links">
                        <div class="tours">
                            <figure class="thumbnail">
                                <a href="<?php echo the_permalink(); ?>">
                                    <img src="<?php echo get_the_post_thumbnail_url($post_id, 'full'); ?>" alt="<?php the_title(); ?>" />
                                </a>
                            </figure>
                            <aside class="heading_title">
                                <h3><a href="<?php echo the_permalink(); ?>"><?php the_title() ?></a></h3>
                                <div class="money">
                                    <span class="money"><?php echo get_post_meta(get_the_ID(), '_gia_tour', TRUE); ?> VND</span>
                                </div>
                            </aside>
                        </div>
                    </li>
                <?php endwhile;
                else : ?>
                <p>Đang cập nhật.. !</p>
            <?php endif;
            wp_reset_postdata(); ?>
        </ul>
    </section>
</aside>

<?php if (is_active_sidebar('block-after-content')) : ?>
    <?php dynamic_sidebar('block-after-content'); ?>
<?php endif; ?>