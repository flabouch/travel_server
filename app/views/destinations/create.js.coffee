$('<%= escape_javascript(render :partial => @destination) %>')
	.appendTo('#trip_destinations')
	.hide()
	.fadeIn()
