class UsersController < ApplicationController

  def show
    @user_posts = UserPost.order("created_at DESC")
    @post_matches = PostMatch.order("created_at DESC")
  end

end
