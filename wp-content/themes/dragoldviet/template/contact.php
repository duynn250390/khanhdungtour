<?php
/*
 Template Name: Contact
 */
?>
<?php get_header(); ?>
<div class="warap">
    <section class="breakcrumm_ss bc_contact">
        <div class="container">
            <div class="breadcrumbs">
                <?php
                if (function_exists('yoast_breadcrumb')) {
                    yoast_breadcrumb('<p id="breadcrumbs">', '</p>');
                }
                ?>
            </div>
        </div>
    </section>
    <section class="maps">
        <!-- <div class="ovelay"></div> -->
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1355.6705655385697!2d108.18720981217005!3d16.043919592387578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142190ad2aa2a2b%3A0x8ccd348ba0cfa072!2zQ8O0bmcgVHkgVG5oaCBYw6J5IEThu7FuZyBUaMawxqFuZyBN4bqhaSBEdSBM4buLY2ggS2jDoW5oIER1bmc!5e0!3m2!1svi!2s!4v1572940732008!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </section>
    <section class="content_page_main contact ">
        <div class="container">
            <div class="box_right">
                <div class="content_box">
                    <div class="box_item_contact">
                        <div class="bulet"></div>
                        <h3 class="title">Địa chỉ</h3>
                        <div class="description ">
                            <p><?php echo get_option('my_local'); ?></p>
                        </div>
                    </div>
                    <div class="box_item_contact">
                        <div class="bulet"></div>
                        <h3 class="title">Phone</h3>
                        <div class="description ">
                            <p><?php echo get_option('my_hotline'); ?></p>
                        </div>
                    </div>
                    <div class="box_item_contact">
                        <div class="bulet"></div>
                        <h3 class="title">Email</h3>
                        <div class="description ">
                            <p> <?php bloginfo('admin_email'); ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="contact_message">
        <div class="container">
            <div class="heading_contact">
                <h1>Lắng nghe từ bạn</h1>
                <p>Mỗi tin nhắn của bạn gửi đến Khánh Dung Tour sẽ luôn được lắng nghe và hồi đáp sớm nhất có thể </p>
            </div>
            <div class="form_contact">
                <!-- <div class="inputform input_haft">
                    <input type="text" placeholder="Họ tên"/>
                </div>
                <div class="inputform input_haft">
                    <input type="email" placeholder="Email"/>
                </div>
                <div class="inputform input_full">
                    <textarea>Nhập thông điệp muốn gửi</textarea>
                </div>
                <div class="inputform input_full contact_submit">
                    <button>Gửi thông điệp</button>
                </div> -->
                <?php echo do_shortcode('[contact-form-7 id="297" title="Contact form 1"]'); ?>
            </div>
        </div>
    </section>
</div>

<?php get_footer(); ?>