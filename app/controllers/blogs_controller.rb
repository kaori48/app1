class BlogsController < ApplicationController

# 詳細ページ
  def show
  	@blog = Blog.find(params[:id])
  end

# Topページ
  def index
  	# 記事を全件取得
  	@blogs = Blog.all
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

# 投稿
  def edit
    @blog = Blog.find(params[:id])
  end

# 更新
  def update
    blog = Blog.find(params[id])
    blog.update(blog_params)
    redirect_to blogs_path(blog)
  end
# 削除
  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end

private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
