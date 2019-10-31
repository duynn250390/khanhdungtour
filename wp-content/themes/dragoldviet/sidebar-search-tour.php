<aside class="wiget wiget-searc-tours">
    <header>
        <h1 class="widget-title">Tìm kiếm tour</h1>
    </header>
    <section class="body_widget">
        <form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
            <input name="post-type" type="hidden" value="tours">
            <div class="fomr_search">
                <div class="group_form">
                    <label for="dia_danh_du_lich">Điểm du lịch</label>
                    <div class="control_in in_one">
                        <?php
                        $term_diem_dens = get_terms(array(
                            'taxonomy' => 'mien',
                            'hide_empty' => false,
                            'parent' => 0,
                        ));
                        echo '<select name="vung-mien" id="vung-mien">';
                        echo ' <option value="">Tìm kiếm theo vùng miền</option>';
                        foreach ($term_diem_dens as $term_diem_den) { ?>
                            <option <?php
                                        if ($_GET['vung-mien'] == $term_diem_den->name) {
                                            echo 'selected';
                                        }
                                        ?> value="<?php echo $term_diem_den->name ?>" data_dia_diem_head="<?php echo $term_diem_den->term_id ?>"><?php echo $term_diem_den->name ?></option>
                        <?php }
                        echo '</select>'; ?>
                    </div>
                </div>
                <div class="group_form">
                    <label for="txt_diem_den">Điểm đến</label>
                    <div class="control_in in_chu">
                        <select class="diem-den" id="txt_diem_den" name="diem-den">
                            <?php
                            $terms = get_terms(array(
                                'taxonomy' => 'tinh',
                                'hide_empty' => false,
                                'parent' => 0,
                            ));
                            echo '<option value="0">--Chọn điểm đến--</option>';
                            foreach ($terms as $term) { ?>
                                <option <?php if ($_GET['diem-den'] == $term->name) {
                                                echo 'selected';
                                            } ?> value="<?php echo $term->name ?>" data_dia_diem="<?php echo $term->term_id ?>"><?php echo $term->name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="group_form">
                    <label for="dia_danh_du_lich">Điểm du lịch</label>
                    <div class="control_in in_three">
                        <input name="s" type="text" id="dia_danh_du_lich" value="<?php echo $_GET['s'] ?>" name="dia_danh_du_lich" placeholder="Nhập nội dung cần tìm..." />
                    </div>
                </div>
                <div class="group_form">
                    <button type="submit" class="btn_submit_search">Tìm kiếm</button>
                </div>
            </div>
        </form>
    </section>
</aside>