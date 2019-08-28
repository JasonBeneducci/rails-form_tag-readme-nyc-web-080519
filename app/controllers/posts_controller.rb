class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new(title: params[:post][:title], description: params[:post][:description])
    redirect to posts_path
  end
  
end
