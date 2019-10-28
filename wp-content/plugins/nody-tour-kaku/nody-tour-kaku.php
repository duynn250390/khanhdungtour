<?php

/**
 * Plugin Name: Nody Tour Kaku 
 * Plugin URL: http://khanhdungtour.com
 * Description: This is plusgin creater and update tour travel for khanhdungtour travel
 * Version: 1.0
 * Author: LimeDavis
 * Author URI: http://limedavis.com
 * License: GPLv3 or later
 */

function register_mysettings()
{
    register_setting('ntk-settings-group', 'ntk_option_name');
}

function ntk_create_menu()
{
    // add_menu_page(
    //     __('Quản lý tour du lịch', 'menu-tour'),
    //     __('NTK Tour', 'menu-tour'),
    //     'administrator',
    //     __FILE__,
    //     'ntk_settings_page',
    //     plugins_url('/images/icon.png', __FILE__),
    //     7
    // );
    add_menu_page(__('Quản lý tour du lịch', 'menu-tours'), __('Quản lý Tour', 'menu-tours'), 'manage_options', 'ntk-top-level-handle', 'ntk_menu_main');

    add_submenu_page('ntk-top-level-handle', __('Sublevel 1', 'menu-tours'), __('Sublevel 1', 'menu-tours'), 'manage_options', 'sub-page', 'ntk_menu_sub01');
    add_submenu_page('ntk-top-level-handle', __('Sublevel 2', 'menu-tours'), __('Sublevel 2', 'menu-tours'), 'manage_options', 'sub-page2', 'ntk_menu_sub02');
    add_submenu_page('ntk-top-level-handle', __('Sublevel 2', 'menu-tours'), __('Sublevel 2', 'menu-tours'), 'manage_options', 'sub-page3', 'ntk_menu_sub03');

    wp_enqueue_script('script_pl', plugins_url('js/script.js', __FILE__));
    wp_enqueue_style('style_pl', plugins_url('css/style.css', __FILE__));

    add_action('admin_init', 'register_mysettings');
}
add_action('admin_menu', 'ntk_create_menu');


function ntk_menu_main()
{
    echo "<h2>" .'PAGE Main'. "</h2>";
}

function ntk_menu_sub01()
{
    echo "<h2>" .'PAGE Sub1'. "</h2>";
}

function ntk_menu_sub02()
{
    echo "<h2>" .'PAGE Sub2'. "</h2>";
}

function ntk_menu_sub03()
{
    echo "<h2>" .'PAGE Sub3'. "</h2>";
}


