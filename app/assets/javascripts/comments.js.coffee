#$(document).bind("mobileinit", () ->
#  $.mobile.touchOverflowEnabled = true;
#);
#
#url = document.URL.substr(0, document.URL.length-1) # Remove leading /
#
#$.ajax
#  url: url + '.json'
#  success: (data) ->        
#    $.each(data.data.children, (i, post) ->
#      true
#    )
    
