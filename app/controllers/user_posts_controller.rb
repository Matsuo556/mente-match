class UserPostsController < ApplicationController

def index
  @user_posts = UserPost.includes(:user).order("created_at DESC").page(params[:page]).per(10)
end

def new
end

end
