class BlogController < ApplicationController

  def index
    @posts = HTTParty.get(blog_url)
    render 'index'
  end

end
