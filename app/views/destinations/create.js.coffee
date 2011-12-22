$('<%= escape_javascript(render :partial => @destination) %>')
	.appendTo('.destinations')
	.hide()
	.fadeIn()
