class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to root_path
  end

    private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
