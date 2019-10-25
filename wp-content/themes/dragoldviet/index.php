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
                                        <select>
                                            <option value="0">Đà Nẵng</option>
                                            <option value="0">Quảng Nam</option>
                                            <option value="0">Quảng Ngãi</option>
                                        </select>
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
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/01.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/02.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/03.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/04.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/05.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
                    <div class="item_list_tour">
                        <figure class="tour_thumb">
                            <a href="">
                                <div class="image">
                                    <img src="<?php echo get_template_directory_uri() ?>/public/images/product/icon_tour/01.jpg" alt="slideshow" />
                                </div>
                            </a>
                        </figure>
                        <figcaption class="content_tour">
                            <h5 class="title">Tour Bà Nà Hill Đón Nắng Vàng</h5>
                            <ul class="list_info">
                                <li class="local">Đà nẵng</li>
                                <li class="date">2 ngày 1 đêm</li>
                                <li class="fa_co">
                                    <ul class="local_start_end">
                                        <li class="local_start">Quảng Nam</li>
                                        <li class="local_end">Quảng Nam</li>
                                    </ul>
                                </li>
                                <li class="price">Già từ:<span> 1.0000.000 VND</span></li>
                            </ul>
                            <div class="read_more">
                                <a href="#" class="btn_read_more">Chi tiết</a>
                            </div>
                        </figcaption>
                    </div><!-- item_list_tour -->
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
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/1.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/1.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/2.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/3.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/1.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                        <div class="item_news">
                            <article class="post_news">
                                <figure class="thumb_news">
                                    <a href="">
                                        <img src="<?php echo get_template_directory_uri() ?>/public/images/news/2.jpg" alt="slideshow" />
                                    </a>
                                </figure>
                                <div class="content">
                                    <ul class="info_news">
                                        <li class="cate"><a href="">Sổ tay du lịch</a></li>
                                        <li class="date">25/03/2019</li>
                                    </ul>
                                    <h4 class="title"><a href="">Trải nghiệm du lịch Sapa ngày mưa</a></h4>
                                    <div class="read_more"><a href="" class="btn_read">Chi tiết</a></div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
get_footer();
?>