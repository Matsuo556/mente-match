class UsersController < ApplicationController

  def show
    @user_posts = UserPost.includes(post_room: :post_match).order("created_at DESC")
    @post_matches = PostMatch.includes(:post_room).order("created_at DESC")
    @books = Book.includes(:biz_user, book_room: :book_match).order("created_at DESC")
  end

end
