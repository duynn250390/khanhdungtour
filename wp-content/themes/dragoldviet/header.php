<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta http-equiv="content-language" content="vi" />
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title><?php bloginfo('title'); ?> - <?php bloginfo('description'); ?></title>
    <!-- <title>LÚCIO SHOP</title> -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.3/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <link rel="alternate" href="<?php bloginfo('url'); ?>" hreflang="vn-vi" />
    <?php if (is_singular() && pings_open(get_queried_object())) : ?>
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
    <?php endif; ?>
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    <header class="main_header">
        <div class="container">
            <div class="aside_header">
                <div class="logo">
                    <a href="<?php bloginfo('url'); ?>">
                        <img src="<?php echo get_template_directory_uri() ?>/public/images/icon/logo.png" alt="<?php bloginfo('title'); ?> " />
                    </a>
                </div>
                <nav class="primary_menu" id="primary_menu">
                    <ul class="menu">
                        <li class="menu_item active">
                            <a href="">Trang chủ</a>
                        </li>
                        <li class="menu_item">
                            <a href="">ITEM MENU 1</a>
                        </li>
                        <li class="menu_item">
                            <a href="">ITEM MENU 2</a>
                        </li>
                        <li class="menu_item">
                            <a href="">ITEM MENU 3</a>
                        </li>
                        <li class="menu_item">
                            <a href="">ITEM MENU 3</a>
                        </li>
                        <li class="menu_item">
                            <a href="">ITEM MENU 4</a>
                        </li>
                        <li class="menu_item">
                            <a href="">Liên hệ</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <!-- https://trendytravel.dttheme.com/ -->
    <!-- https://preview.themeforest.net/item/travel-agency-bootstrap-template/full_screen_preview/19812795?_ga=2.206349971.1266930009.1571730979-1812674523.1562290836 -->