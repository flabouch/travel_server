$('<%= escape_javascript(render :partial => @trip) %>')
	.appendTo('#trips')
	.hide()
	.fadeIn()

