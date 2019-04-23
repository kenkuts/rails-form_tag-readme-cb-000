class PostsController < ApplicationController
  before_action :set_post, only: :show

  def index
    @posts = Post.all
  end
  
  def show
  end
  
  def new 
  end
  
  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to '/posts'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
