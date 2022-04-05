class BookMatchesController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @book_room = BookRoom.find(params[:book_room_id])
    @book_match = BookMatch.new
    
  end

  def create
    @book_match = BookMatch.new(book_match_params)
    unless @book_match.save
      @book = Book.find(params[:book_id])
      @book_room = BookRoom.find(params[:book_room_id])
      render :new
    end
  end

  private

  def book_match_params
    params.require(:book_match).permit(:start, :end, :menu_id, :comment, :charge).merge(book_room_id: params[:book_room_id])
  end


end
