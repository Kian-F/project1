class StoriesController < ApplicationController
    
    def top
      @stories = client.topstories()
    end

    def index 
        @stories = client.topstories()
    end
  end