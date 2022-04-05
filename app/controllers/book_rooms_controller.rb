class BookRoomsController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @book_room = BookRoom.find(@book.book_room.id)
    @book_messages = @book_room.book_messages
  end



end
