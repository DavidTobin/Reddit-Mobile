require 'open-uri'
require 'json'

class HomeController < ApplicationController
  def index
    # Grab the reddit json
    @json = JSON.parse(open('http://reddit.com/r/all.json').read)
    
    respond_to do |format|
      format.html
      format.json { render :json => @json }
    end        
  end
end
