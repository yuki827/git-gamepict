class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    Posts.create(posts_params)
  end
  
  private
  def post_params
    params.permit(:name, :image, :text)
  end

end
