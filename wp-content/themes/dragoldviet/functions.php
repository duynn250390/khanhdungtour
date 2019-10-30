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

// =========================MANAGE TOURS START=============================
// ========================================================================
function manager_tours()
{
    /*
 * Biến $label để chứa các text liên quan đến tên hiển thị của Post Type trong Admin
 */
    $label = array(
        'name' => 'Quản lý Tour', //Tên post type dạng số nhiều
        'singular_name' => 'tours' //Tên post type dạng số ít
    );
    /*
 * Biến $args là những tham số quan trọng trong Post Type
 */
    $args = array(
        'labels' => $label, //Gọi các label trong biến $label ở trên
        'description' => 'Quản lý sản phẩm', //Mô tả của post type
        'supports' => array(
            'title',
            'editor',
            // 'excerpt',
            // 'author',
            'thumbnail',
            // 'comments',
            // 'trackbacks',
            'revisions',
            'custom-fields'
        ), //Các tính năng được hỗ trợ trong post type
        'taxonomies' => array('category', 'post_tag'), //Các taxonomy được phép sử dụng để phân loại nội dung
        'rewrite' => array(
            // 'slug'                  => 'references',
            'with_front'            => false,
            'pages'                 => true,
            'feeds'                 => true,
        ),
        'hierarchical' => false, //Cho phép phân cấp, nếu là false thì post type này giống như Post, true thì giống như Page
        'public' => true, //Kích hoạt post type
        'show_ui' => true, //Hiển thị khung quản trị như Post/Page
        'show_in_menu' => true, //Hiển thị trên Admin Menu (tay trái)
        'show_in_nav_menus' => true, //Hiển thị trong Appearance -> Menus
        'show_in_admin_bar' => true, //Hiển thị trên thanh Admin bar màu đen.
        'menu_position' => 5, //Thứ tự vị trí hiển thị trong menu (tay trái)
        'menu_icon' => 'dashicons-cart', //Đường dẫn tới icon sẽ hiển thị
        'can_export' => true, //Có thể export nội dung bằng Tools -> Export
        'has_archive' => true, //Cho phép lưu trữ (month, date, year)
        'exclude_from_search' => false, //Loại bỏ khỏi kết quả tìm kiếm
        'publicly_queryable' => true, //Hiển thị các tham số trong query, phải đặt true
        'capability_type' => 'post' //
    );
    register_post_type('tours', $args); //Tạo post type với slug tên là sanpham và các tham số trong biến $args ở trên
}
/* Kích hoạt hàm tạo custom post type */
add_action('init', 'manager_tours');


function mien_taxonomy()
{
    $labels = array(
        'name' => 'Vùng miền',
        'singular' => 'Vùng miền',
        'menu_name' => 'Vùng miền'
    );
    $args = array(
        'labels'                     => $labels,
        'hierarchical'               => true,
        'public'                     => true,
        'show_ui'                    => true,
        'show_admin_column'          => true,
        'show_in_nav_menus'          => true,
        'show_tagcloud'              => true,
    );
    register_taxonomy('mien', array('tours'), $args);
}
add_action('init', 'mien_taxonomy', 0);


function tinh_taxonomy()
{
    $labels = array(
        'name' => 'Địa điểm du lịch',
        'singular' => 'Địa điểm du lịch',
        'menu_name' => 'Địa điểm du lịch'
    );
    $args = array(
        'labels'                     => $labels,
        'hierarchical'               => true,
        'public'                     => true,
        'show_ui'                    => true,
        'show_admin_column'          => true,
        'show_in_nav_menus'          => true,
        'show_tagcloud'              => true,
    );
    register_taxonomy('tinh', array('tours'), $args);
}
add_action('init', 'tinh_taxonomy', 2);


// function diem_du_lich_taxonomy()
// {
//     $labels = array(
//         'name' => 'Điểm du lịch',
//         'singular' => 'Điểm du lịch',
//         'menu_name' => 'Điểm du lịch'
//     );
//     $args = array(
//         'labels'                     => $labels,
//         'hierarchical'               => true,
//         'public'                     => true,
//         'show_ui'                    => true,
//         'show_admin_column'          => true,
//         'show_in_nav_menus'          => true,
//         'show_tagcloud'              => true,
//     );
//     register_taxonomy('diem-du-lich', array('tours'), $args);
// }
// add_action('init', 'diem_du_lich_taxonomy', 2);


function add_gallery_metabox($post_type)
{
    $types = array('tours');
    if (in_array($post_type, $types)) {
        add_meta_box(
            'gallery-metabox',
            'Thêm hình ảnh tour',
            'gallery_meta_callback',
            $post_type,
            'normal',
            'high'
        );
    }
}
add_action('add_meta_boxes', 'add_gallery_metabox');

function gallery_meta_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'gallery_meta_nonce');
    $ids = get_post_meta($post->ID, 'tdc_gallery_id', true);
    ?>
    <table class="form-table">
        <tr>
            <td>
                <a class="gallery-add button" href="#" data-uploader-title="Thêm hình ảnh" data-uploader-button-text="Thêm nhiều hình ảnh">Thêm nhiều hình ảnh</a>
                <ul id="gallery-metabox-list">
                    <?php if ($ids) : foreach ($ids as $key => $value) : $image = wp_get_attachment_image_src($value); ?>
                            <li>
                                <input type="hidden" name="tdc_gallery_id[<?php echo $key; ?>]" value="<?php echo $value; ?>">
                                <img class="image-preview" src="<?php echo $image[0]; ?>">
                                <div class="box_change">
                                    <a class="change-image button button-small" href="#" data-uploader-title="Đổi hình" data-uploader-button-text="Đổi hình">Đổi hình</a>
                                    <a class="remove-image  button button-small" href="#">Xóa</a>
                                </div>
                            </li>
                    <?php endforeach;
                        endif; ?>
                </ul>
            </td>
        </tr>
    </table>
<?php }
function gallery_meta_save($post_id)
{
    if (!isset($_POST['gallery_meta_nonce']) || !wp_verify_nonce($_POST['gallery_meta_nonce'], basename(__FILE__))) return;
    if (!current_user_can('edit_post', $post_id)) return;
    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;

    if (isset($_POST['tdc_gallery_id'])) {
        update_post_meta($post_id, 'tdc_gallery_id', $_POST['tdc_gallery_id']);
    } else {
        delete_post_meta($post_id, 'tdc_gallery_id');
    }
}
add_action('save_post', 'gallery_meta_save');

function gallery_enqueue_hook($hook)
{
    wp_enqueue_script('gallery-metabox', get_template_directory_uri() . '/public/js/gallery-metabox.js', array('jquery', 'jquery-ui-sortable'));
    wp_enqueue_style('gallery-metabox', get_template_directory_uri() . '/public/css/gallery_metabox.css');
}
add_action('admin_enqueue_scripts', 'gallery_enqueue_hook');

function info_tour_metabox()
{
    $id = 'info_tour_metabox_input';
    $title = 'Thông tin tour';
    $callback = 'info_tour_metabox_output';
    $screen = 'tours';
    add_meta_box($id, $title, $callback, $screen);
}
add_action('add_meta_boxes', 'info_tour_metabox');

function info_tour_metabox_output($post)
{
    $gia_tour = get_post_meta($post->ID, '_gia_tour', true);
    $thoi_gian_tour = get_post_meta($post->ID, '_thoi_gian_tour', true);
    $diem_xuat_phat = get_post_meta($post->ID, '_diem_xuat_phat', true);
    $diem_den = get_post_meta($post->ID, '_diem_den', true);
    ?>
    <div class="box_info_meta_box">
        <div class="item_list">
            <lable for="gia_tour">Giá tour</lable>
            <input name="gia_tour" class="code" id="gia_tour" type="text" value="<?php echo $gia_tour ?>">
        </div>
        <div class="item_list">
            <lable for="thoi_gian_tour">Thời gian Tour</lable>
            <input name="thoi_gian_tour" class="code" id="thoi_gian_tour" type="text" value="<?php echo $thoi_gian_tour ?>">
        </div>
        <div class="item_list">
            <lable for="diem_xuat_phat">Điểm xuất phát</lable>
            <?php
                $terms = get_terms(array(
                    'taxonomy' => 'tinh',
                    'hide_empty' => false,
                    'parent' => 0,
                ));
                echo '<select  name="diem_xuat_phat" id="diem_xuat_phat" class="code">';
                echo '<option value="0">--Điểm xuất phát--</option>';
                foreach ($terms as $term) { ?>
                <option value="<?php echo $term->name ?>" <?php if ($diem_xuat_phat == $term->name) {
                                                                        echo 'selected';
                                                                    } ?>><?php echo $term->name ?></option>
            <?php }
                echo '</select>'; ?>
        </div>
        <div class="item_list">
            <lable for="diem_den">Điểm đến</lable>
            <?php
                $terms = get_terms(array(
                    'taxonomy' => 'tinh',
                    'hide_empty' => false,
                    'parent' => 0,
                ));
                echo '<select  name="diem_den" id="diem_den" class="code">';
                echo '<option value="0">--Điểm xuất phát--</option>';
                foreach ($terms as $term) { ?>
                <option value="<?php echo $term->name ?>" data_id_tinh="<?php echo $term->term_id; ?>" <?php if ($diem_xuat_phat == $term->name) {
                                                                                                                    echo 'selected';
                                                                                                                } ?>><?php echo $term->name ?></option>
            <?php }
                echo '</select>'; ?>
        </div>
        <div class="item_list">
            <?php
                $termID = 36;
                $taxonomyName = "tinh";
                $termchildren = get_term_children($termID, $taxonomyName);

                echo '<ul>';
                foreach ($termchildren as $child) {
                    $term = get_term_by('id', $child, $taxonomyName);
                    echo '<li><a href="' . get_term_link($term->name, $taxonomyName) . '">' . $term->name . '</a></li>';
                }
                echo '</ul>';
                ?>
        </div>
        <!-- <div class="item_list">
            <lable for="diem_den">Điểm đến</lable>
            <select name="diem_den_chinh" id="diem_den_chinh" class="code">
                <option value="0">--Điểm đến--</option>
            </select>
        </div>  -->
        <script type="text/javascript">
            $(document).ready(function() {
                // $('#diem_den').on('change', function() {
                //     var id_tinh = $(this).find("option:selected").attr('data_id_tinh');
                //     $.ajax({
                //         type: "post", //Phương thức truyền post hoặc get
                //         dataType: "json", //Dạng dữ liệu trả về xml, json, script, or html
                //         url: '<?php echo admin_url('admin-ajax.php'); ?>', //Đường dẫn chứa hàm xử lý dữ liệu. Mặc định của WP như vậy
                //         data: {
                //             action: "get_diem_den_cua_tinh", //Tên action
                //             'id_tinh': id_tinh
                //         },
                //         context: this,
                //         beforeSend: function() {
                //             //Làm gì đó trước khi gửi dữ liệu vào xử lý
                //         },
                //         success: function(response) {
                //             //Làm gì đó khi dữ liệu đã được xử lý
                //             if (response.success) {
                //                 // alert(response.data);
                //                 var data = response.data;
                //                 console.log(data);

                //                 // var html = "<option value='0'>--Phường/xã--</option>";
                //                 // data.forEach(function(item) {
                //                 //     // html += "<option value='" + item.name + "' data_id_huyen ='" + item.term_id + "'>" + item.name + "</option>";
                //                 // });
                //                 $('#diem_den_chinh').html(data);
                //             } else {
                //                 alert('Đã có lỗi xảy ra');
                //             }
                //         },
                //         error: function(jqXHR, textStatus, errorThrown) {
                //             //Làm gì đó khi có lỗi xảy ra
                //             console.log('The following error occured: ' + textStatus, errorThrown);
                //         }
                //     })
                //     return false;
                // });
            });
        </script>
    </div>
<?php
}
function info_tour_save($post_id)
{
    if (isset($_POST['gia_tour'])) {
        $gia_tour = sanitize_text_field($_POST['gia_tour']);
        update_post_meta($post_id, '_gia_tour', $gia_tour);
    }
    if (isset($_POST['thoi_gian_tour'])) {
        $thoi_gian_tour = sanitize_text_field($_POST['thoi_gian_tour']);
        update_post_meta($post_id, '_thoi_gian_tour', $thoi_gian_tour);
    }
    if (isset($_POST['diem_xuat_phat'])) {
        $diem_xuat_phat = sanitize_text_field($_POST['diem_xuat_phat']);
        update_post_meta($post_id, '_diem_xuat_phat', $diem_xuat_phat);
    }
    if (isset($_POST['diem_den'])) {
        $diem_den = sanitize_text_field($_POST['diem_den']);
        update_post_meta($post_id, '_diem_den', $diem_den);
    }
}
add_action('save_post', 'info_tour_save');
// =========================MANAGE TOURS END=============================
// ======================================================================

// =========================SET GET VIEW START=============================
// ======================================================================
function setpostview($postID)
{
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}

function getpostviews($postID)
{
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "0 View";
    }
    return '<i class="fa fa-eye" aria-hidden="true"></i> ' . $count;
}
// =========================SET GET VIEW  END=============================
// ======================================================================


// =========================FUNCTION AJAX START===========================
// =======================================================================
add_action('wp_ajax_get_diem_du_lich', 'get_diem_du_lich_init');
add_action('wp_ajax_nopriv_get_diem_du_lich', 'get_diem_du_lich_init');
function get_diem_du_lich_init()
{
    $id_dia_diem  = (isset($_POST['id_dia_diem'])) ? esc_attr($_POST['id_dia_diem']) : '';
    $taxonomy_name = 'tinh';
    $html = '';
    ob_start(); //bắt đầu bộ nhớ đệm
    $termchildren = get_term_children($id_dia_diem, $taxonomy_name);
    foreach ($termchildren as $child) {
        $term = get_term_by('id', $child, $taxonomy_name);
        $html .= '<option value="'.$term->name.'">'.$term->name.'</option>' ;
    }
    wp_reset_query();
    wp_send_json_success($html); // trả về giá trị dạng json
    die(); //bắt buộc phải có khi kết thúc
}
// =========================FUNCTION AJAX END=============================
// =======================================================================


// =========================SIDEBAR START=============================
// ===================================================================

register_sidebar(array(
    'name' => 'Block after content',
    'id' => 'block-after-content',
    'description' => 'Khu vực sidebar hiển thị dưới mỗi bài viết',
    'before_widget' => '<aside id="%1$s" class="widget %2$s">',
    'after_widget' => '</aside>',
    'before_title' => '<h1 class="widget-title">',
    'after_title' => '</h1>'
));

// =========================SIDEBAR END=============================
// =================================================================
