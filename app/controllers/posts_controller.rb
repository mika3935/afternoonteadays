class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
  @post = Post.new(post_params)
  @post.user_id = current_user.id
  if @post.save
    redirect_to @post   
  else
    render :new, status: :unprocessable_entity
  end
end


  def index
  @posts = Post.all.page(params[:page]).reverse_order
  @posts = @posts.where('location LIKE ?', "%#{params[:search]}%") if params[:search].present?
end


  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.page(params[:page]).per(7).reverse_order
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    # 画像が空なら image を除外
    if params[:post][:image].blank?
      if @post.update(post_params.except(:image))
        redirect_to post_path(@post.id)
      else
        render :edit, status: :unprocessable_entity
      end
    else
      if @post.update(post_params)
        redirect_to post_path(@post.id)
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end  # ←✅ ここを追加！

  def confirm
    @posts = current_user.posts.draft.page(params[:page]).reverse_order
  end

  def destroy
    post = Post.find(params[:id])
    begin
      post.destroy
    rescue Errno::EACCES
      # Windows の権限エラーを無視
      puts "ファイル削除できませんでしたが、投稿は削除されます"
    end
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :location, :text, :image, :status)
  end
end
