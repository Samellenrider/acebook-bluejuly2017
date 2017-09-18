class PostsController < ApplicationController
  # def new
  #   @post = Post.new
  #   @posts = Post.all
  # end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @post = Post.new
    @posts = Post.all.sort_by {|post| post.created_at }
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
