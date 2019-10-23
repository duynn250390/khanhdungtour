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
            <div class="show_event" id="show_event">
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
                <div class="list_service">
                    <div class="item_list">
                        <a href="">
                            <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-bac.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <h3>
                                Du lịch miền bắc
                            </h3>
                        </a>
                    </div>
                    <div class="item_list">
                        <a href="">
                        <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-trung.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <h3>
                                Du lịch miền Trung
                            </h3>
                        </a>
                    </div>
                    <div class="item_list">
                        <a href="">
                        <figure class="thumb_item">
                                <img src="<?php echo get_template_directory_uri() ?>/public/images/icon_web/du-lich-mien-nam.jpg" alt="du-lich-mien-bac" />
                            </figure>
                            <h3>
                                Du lịch miền Nam
                            </h3>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php
get_footer();
?>