class StoriesController < ApplicationController
    
    def top
      @stories = client.articles()
    end

     

    # def index 
    #     @stories = client.topstories()
    # end
  end