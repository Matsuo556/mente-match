class UserPostsController < ApplicationController
before_action :authenticate_user!, only: [:new]

def index
  @user_posts = UserPost.includes(:user).order("created_at DESC").page(params[:page]).per(10)
  @q = UserPost.ransack(params[:q])
end

def search
    # params[:q]がnilではない且つ、params[:q][:name]がnilではないとき（商品名の欄が入力されているとき）
    # if params[:q] && params[:q][:name]と同じような意味合い
    if params[:q]&.dig(:comment)
      # squishメソッドで余分なスペースを削除する
      squished_keywords = params[:q][:comment].squish.delete('　')
      ## 半角スペースを区切り文字として配列を生成し、paramsに入れる
      params[:q][:comment_cont_any] = squished_keywords.split(" ")
    end
  @q = UserPost.ransack(params[:q])
  @user_posts = @q.result.includes(:user).order("created_at DESC").page(params[:page]).per(10)
end

def new
  @user_post = UserPost.new
end

def create
  @user_post = UserPost.new(user_post_params)
    if @user_post.save
      redirect_to action: :index
    else
      render :new
    end
end

def show
  @user_post = UserPost.find(params[:id])
end

def edit
  @user_post = UserPost.find(params[:id])
end

def update
  @user_post = UserPost.find(params[:id])
  if @user_post.update(user_post_params)
    redirect_to action: :show
  else
    render :edit
  end
end


private

def user_post_params
  params.require(:user_post).permit(:requested_at, :menu_id, :comment).merge(user_id: current_user.id)
end


end
