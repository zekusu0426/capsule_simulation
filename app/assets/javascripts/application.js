// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets

	
$(function() {
    // カード一覧のカウント
    var total = $('#card_list .card_checkbox input:checkbox').length;
    $('input:checkbox').change(function() {
        var cnt = $('#card_list .card_checkbox input:checkbox:checked').length;
        $('div.possession_rate').text('所持率：' + Math.round(cnt*100*100/total)/100 + '％' );
        $('div.selected_card').text('選択：' + cnt + '個');
    }).trigger('change');

    // 全選択
    $('.card_all_checkbox input,.card_all_checkbox label').click(function(){ //全選択・全解除をクリックしたとき
        var items = $(this).closest('.card_all_checkbox').next().find('input');
        // var items = $(this).closest('.card_checkbox_list');
        // console.log($(this));
        if($(this).is(':checked')) { //全選択・全解除がcheckedだったら
            $(items).prop('checked', true); //アイテムを全部checkedにする
        } else { //全選択・全解除がcheckedじゃなかったら
            $(items).prop('checked', false); //アイテムを全部checkedはずす
        }
    });    
});




