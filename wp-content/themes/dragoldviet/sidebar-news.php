<aside class="wiget wiget-searc-tours">
    <header>
        <h1 class="widget-title">Tìm kiếm tour</h1>
    </header>
    <section class="body_widget">
        <form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
            <input name="post-type" type="hidden" value="tours">
            <div class="fomr_search">
                <div class="group_form">
                    <label for="txt_diem_den">Điểm đến</label>
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
<script type="text/javascript">
    $(document).ready(function() {
        $('#txt_diem_den').on('change', function() {
            var id_dia_diem = $(this).find("option:selected").attr('data_dia_diem');
            $.ajax({
                type: "post", //Phương thức truyền post hoặc get
                dataType: "json", //Dạng dữ liệu trả về xml, json, script, or html
                url: '<?php echo admin_url('admin-ajax.php'); ?>', //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
                data: {
                    action: "get_diem_du_lich", //Tên action
                    'id_dia_diem': id_dia_diem
                },
                context: this,
                beforeSend: function() {},
                success: function(response) {
                    if (response.success) {
                        var data = response.data;
                        $('#diem_du_lich').html(data);
                    } else {
                        alert('Đã có lỗi xảy ra');
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log('The following error occured: ' + textStatus, errorThrown);
                }
            })
            return false;
        });

    });
</script>

<aside class="wiget wiget-searc-tours">
    <header>
        <h1 class="widget-title">Gợi ý tour du lịch</h1>
    </header>
    <section class="body_widget">
        <ul class="tour_links">
            <?php
            $ten_tinh =  get_post_meta(get_the_ID(), '_diem_den', TRUE);

            $category = get_term_by('name', $ten_tinh, 'tinh');
            $args = array(
                'post_type' => 'tours',
                'showposts' => 5,
                'orderby' => 'rand',
                'order'    => 'DESC',
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
<aside class="wiget wiget-searc-tours">
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- sidebar -->
    <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-2471616157718830" data-ad-slot="9784211247" data-ad-format="auto" data-full-width-responsive="true"></ins>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
</aside>