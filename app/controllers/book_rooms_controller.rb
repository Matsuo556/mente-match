class BookRoomsController < ApplicationController
  before_action :authenticate_any!, only: :index
  before_action :user_check, only: :index

  def index
    # if Book.exists?(params[:book_id])
      @book = Book.find(params[:book_id])
      @book_room = BookRoom.find(@book.book_room.id)
      @book_messages = @book_room.book_messages
    # else
    #   if user_signed_in?
    #     redirect_to user_path(current_user.id)
    #   else
    #     redirect_to biz_user_path(current_biz_user.id)
    #   end
    # end
  end


  private

  def authenticate_any!
    if biz_user_signed_in?
      true
    else
      authenticate_user!
    end
  end

  def user_check
    @book = Book.find(params[:book_id])
    if user_signed_in? && current_user.id != @book.book_room&.user_id
      redirect_to root_path
    elsif biz_user_signed_in? && current_biz_user.id != @book.book_room&.biz_user_id
      redirect_to root_path
    end
  end

end
