$('<%= escape_javascript(render :partial => @trip) %>')
	.appendTo('#user_trips')
	.hide()
	.fadeIn()

