# Lets fetch the json from reddit.

$(document).bind("mobileinit", () ->
  $.mobile.touchOverflowEnabled = true;
);

$.ajax
  url: '/home/index.json'
  success: (data) ->        
    $.each(data.data.children, (i, post) ->
      
      imgdata   = '';
      imgdata   = '<img style="vertical-align: middle;" src="' + post.data.thumbnail + '" />' if typeof(post.data.thumbnail) isnt undefined and post.data.thumbnail.length > 0
      
      # Special cases
      switch imgdata
        when 'default'  then imgdata = ''
        when 'nsfw'     then imgdata = '' # Should be changed to a placeholder 
      
      $('#reddit-page').append('<li>' +
        '<a href="' + post.data.url + '">' +        
        imgdata +
        '<h3>' + post.data.title + '</h3>' + 
        '<p>/r/' + post.data.subreddit + '</p></a>' +  
        '<a href="http://reddit.com' + post.data.permalink + '">Comments (' + post.data.num_comments + ')</a>' +      
        '</li>').listview('refresh')
        
        true
      )
    
    true
      
     
