require 'open-uri'
require 'json'

class CommentsController < ApplicationController
  def index
    @subreddit = params[:subreddit] 
    @id        = params[:postid]
    @slug      = params[:slug]
    
    @comments  = JSON.parse(open('http://reddit.com/api/info.json?url=r/' + @subreddit + '/comments/' + @id + '/' + @slug + '.json').read)
    
    respond_to do |format|
      format.html
      format.json { render :json => @comments}
    end
  end
end
