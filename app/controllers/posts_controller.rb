class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # 新規投稿フォーム
  def new
    @post = Post.new
  end

  # 確認画面
  def confirm
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    render :new if @post.invalid?
  end

  # 投稿作成
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if params[:back]   # ← 戻るボタン対応
      render :new
      return
    end

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  # 投稿一覧
  def index
    @posts = Post.all.page(params[:page]).reverse_order
    @posts = @posts.where('location LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  # 投稿詳細
  def show
    @comment = Comment.new
    @comments = @post.comments.page(params[:page]).per(7).reverse_order
  end

  # 編集
  def edit
  end

  # 更新
  def update
    if params[:post][:image].blank?
      if @post.update(post_params.except(:image))
        redirect_to post_path(@post)
      else
        render :edit, status: :unprocessable_entity
      end
    else
      if @post.update(post_params)
        redirect_to post_path(@post)
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  # 削除
  def destroy
    begin
      @post.destroy
    rescue Errno::EACCES
      puts "ファイル削除できませんでしたが、投稿は削除されます"
    end
    redirect_to posts_path
  end

  private

  # 共通処理
  def set_post
    @post = Post.find(params[:id])
  end

  # Strong Parameters
  def post_params
    params.require(:post).permit(:location, :text, :image, :status)
  end
end
