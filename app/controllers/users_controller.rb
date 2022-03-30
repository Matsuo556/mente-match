class UsersController < ApplicationController

  def show
    @user_posts = UserPost.all.order("created_at DESC")
    @post_matches = PostMatch.all.order("created_at DESC")
  end

end
