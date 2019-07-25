class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice => "Your post have been save"
    else
      render "new"
    end
  end

  def edit

  end

  def update

  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy

  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :category_id, :author_id)
    end
end
