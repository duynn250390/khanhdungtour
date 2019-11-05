<?php
/*
 Template Name: Contact
 */
?>
<?php get_header(); ?>
<div class="warap">
    <section class="breakcrumm_ss">
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
    <section class="content_page_main full_width">
        <div class="container">
            <div class="box_main box_news">
                <div class="box_right">
                   <div class ="maps">Maps</div>
                   <div class="content_box">
                       <div class="box_item_contact">123</div>
                       <div class="box_item_contact">123</div>
                       <div class="box_item_contact">123</div>
                   </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php get_footer(); ?>