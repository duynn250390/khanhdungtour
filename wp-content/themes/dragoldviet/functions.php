<?php
if (!function_exists('remove_admin_login_header')) :
    function remove_admin_login_header()
    {
        remove_action('wp_head', '_admin_bar_bump_cb');
    }
    add_action('get_header', 'remove_admin_login_header');
endif;

// wp_headにscriptとstylesを追加
if (!function_exists('herozuzu_scripts_styles')) :
    function herozuzu_scripts_styles()
    {
        // Style
        wp_register_style('main-style', get_template_directory_uri() . "/style.css", 'all');
        wp_enqueue_style('main-style');
        // Script
        wp_enqueue_script('main_js', get_template_directory_uri() . "/public/js/jquery.min.js", array('jquery'), '3.2.1', false);
        wp_enqueue_script('slick', get_template_directory_uri() . "/public/js/slick.js", array('jquery'), '1.0.0', false);
        wp_enqueue_script('myquery', get_template_directory_uri() . "/public/js/mquery.js", array('jquery'), '1.0.0', false);
    }
    add_action('wp_enqueue_scripts', 'herozuzu_scripts_styles');
endif;

// headに出力されるタグを消去
remove_action('wp_head', 'wp_generator'); //WordPressのバージョン情報
remove_action('wp_head', 'print_emoji_detection_script', 7); //絵文字対応のスクリプト
remove_action('wp_print_styles', 'print_emoji_styles'); //絵文字対応のスタイル


if (!function_exists('herozuzu_setup')) :
    function herozuzu_setup()
    {
        load_theme_textdomain('herozuzu', get_template_directory() . '/languages');
        add_theme_support('automatic-feed-links');
        add_theme_support('title-tag');
        add_theme_support('customize-selective-refresh-widgets');
        register_nav_menu('global-nav', __('Header menu', 'herozuzu'));
        register_nav_menu('left-nav', __('Left menu', 'herozuzu'));
        register_nav_menu('right-nav', __('Right menu', 'herozuzu'));
        add_theme_support('post-thumbnails');
        add_image_size('large-thumbnail', 1118, 538, true);
        add_image_size('images_project', 1000, 440, true);
    }
    add_action('after_setup_theme', 'herozuzu_setup');
endif;

add_action('after_setup_theme', 'remove_admin_bar');
function remove_admin_bar()
{
    show_admin_bar(false);
}
