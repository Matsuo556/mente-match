class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :move_to_root_path, only: :show
  

  def show
    @user_posts = UserPost.includes(post_room: :post_match).order("created_at DESC")
    @post_matches = PostMatch.includes(:post_room).order("created_at DESC")
    @books = Book.includes(:biz_user, book_room: :book_match).order("created_at DESC")
  end

  private

  def move_to_root_path
    if current_user.id.to_s !=  params[:id]
      redirect_to root_path
    end
  end

end

