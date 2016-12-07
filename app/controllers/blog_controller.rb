class BlogController < ApplicationController

  def index
    @posts = HTTParty.get("https://www.googleapis.com/blogger/v3/blogs/3387648302045427257?key=#{Figaro.env.blogger_api_key}")
    render 'index'
  end

end
