module Newsapi
    class Client
  


    #   def initialize
    #     @host = 'newsapi'
    #     @key = 'a7543ef6fc8f452299648799693daa21'
    #   end
  
      def item(id)
        get("item/#{id}")
      end
  
      def articles
        get('articles')
      end

      def topstories(start = 0, per_page = 10, expand = true)
        stories = get('topstories')[start...start + per_page]
      
        if expand
          stories.map! do |story|
            item(story)
          end
        end
      
        stories
      end
  
      private
      url = "http://newsapi.org/v2/top-headlines?country=gb&category=sports&apiKey=a7543ef6fc8f452299648799693daa21"
  
      def get(url)
        # response = Excon.get(
        #   'https://' + @host + '/' + path + '.json?print=pretty',
        #   headers: {
        #     'x-rapidapi-host' => @host,
        #     'x-rapidapi-key' => @key,
        #   }
        # )

        data = HTTParty.get path
            puts data
        articles = data['articles'] 
        articles.each do |article|
                 puts  article["source"]['name']
                 puts article["author"]
  
        return false if response.status != 200
    
        JSON.parse(response.body)
      end
    end
  end
end