class UserPostsController < ApplicationController

def index
  @user_posts = UserPost.includes(:user).order("created_at DESC").limit(10)
end

def new
end

end
