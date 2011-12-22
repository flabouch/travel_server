<% destinations_data = escape_javascript(render partial:
  "destinations/destination", collection: @destinations) %>

#JQuery display on the page
$('.destinations').html('<%= destinations_data%>')
