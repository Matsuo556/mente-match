class BizUsersController < ApplicationController

  def show
    @post_rooms = PostRoom.includes(:user_post, :post_match).order("created_at DESC")
    @post_matchs = PostMatch.includes(:post_room).order("created_at DESC")
    @books = Book.includes(:user, book_room: :book_match).order("created_at DESC")
    #@books = Book.where(biz_user_id: current_biz_user.id)
  end

end
