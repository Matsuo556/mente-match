class BookRoomsController < ApplicationController

  def index
    if Book.exists?(params[:book_id])
      @book = Book.find(params[:book_id])
      @book_room = BookRoom.find(@book.book_room.id)
      @book_messages = @book_room.book_messages
    else
      if user_signed_in?
        redirect_to user_path(current_user.id)
      else
        redirect_to biz_user_path(current_biz_user.id)
      end
    end
  end



end
