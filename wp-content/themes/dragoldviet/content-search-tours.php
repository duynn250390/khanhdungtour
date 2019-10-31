        <div class="main_info_tour">
            <div class="slideshow_tour">
                <a href="<?php echo get_permalink($post->ID); ?>">
                    <?php
                    if (has_post_thumbnail()) {
                        echo get_the_post_thumbnail($post->ID, 'square_smallc_thumbnail');
                    } ?>
                </a>
            </div>
            <div class="detail_tour">
                <div class="infos">
                    <h1 class="heading"><a href="<?php echo get_permalink($post->ID); ?>"><?php echo get_the_title() ?></a></h1>
                    <div class="content">
                        <?php the_excerpt(); ?>
                    </div>
                </div>
            </div>
        </div>