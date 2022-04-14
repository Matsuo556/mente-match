class BizUsersController < ApplicationController
  before_action :authenticate_biz_user!, only: :show
  before_action :move_to_root_path, only: :show

  def show
    @post_rooms = PostRoom.includes(:user_post, :post_match).order("created_at DESC")
    @post_matchs = PostMatch.includes(:post_room).order("created_at DESC")
    @books = Book.includes(:user, book_room: :book_match).order("created_at DESC")
    #@books = Book.where(biz_user_id: current_biz_user.id)
  end

  private

  def move_to_root_path
    if current_biz_user.id.to_s !=  params[:id]
      redirect_to root_path
    end
  end


end
