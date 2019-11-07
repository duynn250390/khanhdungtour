<?php

get_header();
?>
<div class="warap">
    <section class="breakcrumm_ss">
        <div class="container">
            <div id="breadcrumbs" class="breadcrumbs search">
                <div class="list">
                    <a href="<?php echo get_site_url(); ?>" class="home">Trang chủ</a>
                    <span class="breadcrumb_last" aria-current="page">Tin tức du lịch</span>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="box_main box_news category">
            <div class="box_left">
                <?php
                while (have_posts()) : the_post(); ?>
                    <article class="list_item_post content_home">
                        <?php if (has_post_thumbnail()) : ?>
                            <div class="item_avatar_news">
                                <a href="<?php echo get_permalink(); ?>" class="thumb_img_article">
                                    <img src="<?php echo the_post_thumbnail_url('square_smallc_thumbnail'); ?>" alt="<?php echo get_the_title(); ?>">
                                </a>
                            </div>
                        <?php endif ?>
                        <div class="content_article">
                            <div class="heading_title_news">
                                <h2 class="title">
                                    <a href="<?php echo get_permalink(); ?>">
                                        <?php
                                            $title = get_the_title();
                                            echo $title;
                                            ?>
                                    </a>
                                </h2>
                            </div>
                            <div class="modern_list_content">
                                <!-- <div class="cate_gory">
							<?php $categories = get_the_category();
                                $category_id = $categories[0]->cat_ID; ?>
							<a href="<?php echo get_category_link($category_id); ?>">
								<?php echo get_cat_name($category_id); ?></a>
							</div> -->
                                <div class="time_ago">
                                    Ngày đăng <span><?php echo get_the_date(); ?></span>
                                </div>
                                <p><?php echo get_the_excerpt(); ?></p>
                            </div>
                        </div>
                    </article><!-- list_item_post -->
                <?php endwhile;
                wp_reset_postdata(); ?>
            </div>
            <div class="box_right">
                <?php get_sidebar('news'); ?>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
?>