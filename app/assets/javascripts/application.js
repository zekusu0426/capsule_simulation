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

// カード一覧のカウント	
$(function() {
    var total = $('#card_list input:checkbox').length;
    $('input:checkbox').change(function() {
        var cnt = $('#card_list input:checkbox:checked').length;
        $('div.possession_rate').text('選択：' + cnt + '個 \r\n 所持率：' + (cnt/total)*100 + '％' );
    }).trigger('change');
});