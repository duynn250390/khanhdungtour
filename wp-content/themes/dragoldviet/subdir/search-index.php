<div class="main_search">
    <div class="tabs_search">
        <div class="item_tab tab_sty_03 active" data-tab="1">Tìm Tour</div>
        <div class="item_tab tab_sty_03" data-tab="2">Thuê xe</div>
    </div>
    <div class="content_form_search">
        <div class="content_form active" id="tabs_1">
            <form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
                <input name="post-type" type="hidden" value="tours">
                <div class="form_group control_list_form">
                    <div class="item_form_group select_control item_form_group03">
                        <?php
                        $term_diem_dens = get_terms(array(
                            'taxonomy' => 'mien',
                            'hide_empty' => false,
                            'parent' => 0,
                        ));
                        echo '<select name="vung-mien" id="vung-mien">';
                        echo ' <option value="">Tìm kiếm theo vùng miền</option>';
                        foreach ($term_diem_dens as $term_diem_den) { ?>
                            <option value="<?php echo $term_diem_den->name ?>"><?php echo $term_diem_den->name ?></option>
                        <?php }
                        echo '</select>'; ?>
                    </div>
                    <div class="item_form_group select_control item_form_group03" id="item_form_group_home">
                        <?php
                        $term_diem_dens = get_terms(array(
                            'taxonomy' => 'tinh',
                            'hide_empty' => false,
                            'parent' => 0,
                        ));
                        echo '<select  name="diem-den" id="diem-den" class="code">';
                        echo '<option value="0">--Chọn điểm đến--</option>';
                        foreach ($term_diem_dens as $term_diem_den) { ?>
                            <option value="<?php echo $term_diem_den->name ?>"><?php echo $term_diem_den->name ?></option>
                        <?php }
                        echo '</select>'; ?>
                    </div>
                    <div class="item_form_group">
                        <input name="s" type="text" placeholder="Nhập địa điểm muốn đến...">

                    </div>
                </div>
                <div class="form_group control_btn_from">
                    <button class="btn_submit btn btn01">Tìm kiếm</button>
                </div>
            </form>
        </div>
        <div class="content_form" id="tabs_2">
            <div class="form_group control_list_form thue_xe">
                <div class="item_form_group select_control item_form_group03">
                    <?php
                    $term_diem_dens = get_terms(array(
                        'taxonomy' => 'loai_xe',
                        'hide_empty' => false,
                        'parent' => 0,
                    ));
                    echo '<select name="loai_xe" id="loai_xe">';
                    echo ' <option value="">Chọn loại xe</option>';
                    foreach ($term_diem_dens as $term_diem_den) { ?>
                        <option value="<?php echo $term_diem_den->name ?>"><?php echo $term_diem_den->name ?></option>
                    <?php }
                    echo '</select>'; ?>
                </div>
                <div class="item_form_group select_control item_form_group03">
                    <?php
                    $hang_xes = get_terms(array(
                        'taxonomy' => 'hang_xe',
                        'hide_empty' => false,
                        'parent' => 0,
                    ));
                    echo '<select name="hang_xe" id="hang_xe">';
                    echo ' <option value="">Chọn hãng xe</option>';
                    foreach ($hang_xes as $hang_xe) { ?>
                        <option value="<?php echo $hang_xe->name ?>"><?php echo $hang_xe->name ?></option>
                    <?php }
                    echo '</select>'; ?>
                </div>
            </div>
            <div class="form_group control_btn_from">
                <button class="btn_submit btn btn01">Tìm kiếm</button>
            </div>
        </div>
    </div>
</div>