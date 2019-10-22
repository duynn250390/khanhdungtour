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
            Header
        </div>
    </header>