class BlogController < ApplicationController

  def index
    @posts = HTTParty.get(blog_url)
  end

end
