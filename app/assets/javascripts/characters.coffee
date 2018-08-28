# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	# console.log(cardTotal = $('#card-count').data("card-count"))
	cardTotal = $('#card_list .card_checkbox input:checkbox').length
	console.log(Date.now())
	$('input:checkbox').on 'change', ->
		cnt = $('#card_list .card_checkbox input:checkbox:checked').length
		$('.possession_rate').text('所持率：' + Math.round(cnt*100*100/cardTotal)/100 + '％' )
		$('.selected_card').text('選択：' + cnt + '個')
	.trigger('change')

    # 全選択・全解除
	$(".btn-select_all").on 'click', ->
		$(this).closest('.modal-body').find('input').prop('checked', true)

	$(".btn-all_cancellation").on 'click', ->
    	$(this).closest('.modal-body').find('input').prop('checked', false)

	$(".btn-select_all,.btn-all_cancellation").on 'click', ->
		cnt = $('#card_list .card_checkbox input:checkbox:checked').length
		$('.possession_rate').text('所持率：' + Math.round(cnt*100*100/cardTotal)/100 + '％' )
		$('.selected_card').text('選択：' + cnt + '個')