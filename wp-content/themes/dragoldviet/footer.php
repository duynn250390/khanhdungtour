<footer class="main_footer">
    <section class="footer01">
        <div class="container">
            <div class="content">
                <div class="colum_a">
                    <div class="logo">
                        <a href="<?php bloginfo('url'); ?>">
                            <img src="<?php echo get_template_directory_uri() ?>/public/images/icon/logo.png" alt="<?php bloginfo('title'); ?> " />
                        </a>
                    </div>
                    <div class="description">
                        <!-- <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p> -->
                        <p><?php bloginfo('description'); ?></p>
                    </div>
                    <ul class="social">
                        <li class="sc_fb"><a href="https://www.facebook.com/KhanhDungTour/"></a></li>
                        <li class="sc_tw"><a href=""></a></li>
                        <li class="sc_yt"><a href=""></a></li>
                        <li class="sc_in"><a href=""></a></li>
                    </ul>
                </div>
                <div class="colum_b">
                    <ul class="list_tour_travel">
                        <?php
                        $terms = get_terms(array(
                            'taxonomy' => 'tinh',
                            'hide_empty' => false,
                            'parent' => 0,
                        ));

                        foreach ($terms as $term) { ?>
                            <li><a href="<?php bloginfo('url'); ?>/tinh/<?php echo $term->slug; ?>">Tour <?php echo $term->name ?></a></li>
                            <!-- <option value="<?php echo $term->name ?>" data_id_tinh="<?php echo $term->term_id; ?>" <?php if ($diem_den == $term->name) {
                                                                                                                                echo 'selected';
                                                                                                                            } ?>><?php echo $term->name ?></option> -->
                        <?php }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="footer02">
        <div class="container">
            <div class="cl_main">
                <div class="box_haft box_left">
                    <ul class="list_bo">
                        <li class="hotline">Hotline: <strong><?php echo get_option('my_phone'); ?></strong></li>
                    </ul>
                </div>
                <div class="box_haft box_right">
                    <ul class="list_bo">
                        <li class="email">Email: <?php bloginfo('admin_email'); ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="footer03">
        <div class="container">
            <ul class="content_fo">
                <li class="item_fo">
                    <div class="bodyfo company">
                        <h4 class="title company">
                            Công ty TNHH xây dựng thương mại và dịch vụ Khánh Dung
                        </h4>
                        <ul class="list_bo">
                            <li class="list_li_bo local">
                                <?php echo get_option('my_local'); ?>
                            </li>
                            <li class="list_li_bo email">
                                <?php bloginfo('admin_email'); ?>
                            </li>
                            <li class="list_li_bo hotline">
                                <?php echo get_option('my_hotline'); ?>
                            </li>
                            <li class="list_li_bo site">
                                <a href="<?php bloginfo('url'); ?>"><?php echo bloginfo('url'); ?></a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="item_fo">
                    <div class="bodyfo">
                        <h4 class="title">
                            Chính sách bảo mật
                        </h4>
                        <ul class="list_bo">
                            <li class="list_li_bo">
                                <a href="" class="des_class">Giới thiệu</a>
                            </li>
                            <li class="list_li_bo">
                                <a href="" class="des_class">Chính sách - bảo mật</a>
                            </li>
                            <li class="list_li_bo">
                                <a href="" class="des_class">Hướng dẫn Ab</a>
                            </li>
                            <li class="list_li_bo">
                                <a href="" class="des_class">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="item_fo">
                    <div class="bodyfo">
                        <h4 class="title">Từ khóa</h4>
                        <?php if (function_exists('wp_tag_cloud')) : ?>
                            <ul>
                                <li><?php wp_tag_cloud('smallest=8&largest=22'); ?></li>
                            </ul>
                        <?php endif; ?>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <section class="coppy_right">
        <div class="container">
            <div class="coppy">© 2019 - khanhdungtour.com. All rights reserved. - by <a href="https://www.facebook.com/ngocduycit"> NgocDuy</a></div>
        </div>
    </section>
</footer>
</body>

</html>