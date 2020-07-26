class PostsController < ApplicationController
    before_action :set, only: [:edit,:update,:destroy]
# 動画投稿フォーム
  def new
    @post = Post.new
  end
# 動画　処理
  def create
# 　動画のタイトル、説明、動画
    @post = Post.new(post_params)
    if @post.save
      redirect_to :action => 'index' ,notice: '投稿しました'
    else
# 　動画投稿ページ
      render :new
    end
  end
  
#   投稿一覧
  def index
# 			投稿フォーム　投稿処理	投稿一覧ページ　全て　並べる　新規作成順
    @posts = Post.all.order('created_at DESC')
  end
  # 編集
  def edit
    # @post = Post.find_by(id: params[:id])
  end
# 　編集投稿処理
  def update
    if @post.update(post_params)
      redirect_to :action => 'index' ,notice: '編集しました'
    else
      render action: :edit
    end
  end
# 　投稿処理
  def destroy
    @post.destroy
   redirect_to :action => 'index' ,notice: '消去しました'
  end

  private
    def post_params
# 　　　動画タイトル　説明　動画
      params.require(:post).permit(:title, :body, :video,:heroku_url,:github_url)
    end
    
  def set
    @post = Post.find_by(id: params[:id])
  end
end
