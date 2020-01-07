class BlogsController < ApplicationController
  def index
  end

  def show
  end
# 投稿フォーム表示
  def new
  	@blog = Blog.new
  end
#保存
  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

  def edit
  end

private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
