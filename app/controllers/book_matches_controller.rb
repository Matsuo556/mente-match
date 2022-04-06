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

  def show
    @book_match = BookMatch.find(params[:id])
    @book_room = BookRoom.find(params[:book_room_id])
    @book_messages = @book_room.book_messages
  end

  def edit
    @book = Book.find(params[:book_id])
    @book_room = BookRoom.find(params[:book_room_id])
    @book_match = BookMatch.find(params[:id])
  end

  def update
    @book_match = BookMatch.find(params[:id])
    if @book_match.update(book_match_params)
      redirect_to action: :show
   else
      @book = Book.find(params[:book_id])
      @book_room = BookRoom.find(params[:book_room_id])
      render :edit
   end
  end

  private

  def book_match_params
    params.require(:book_match).permit(:start, :end, :menu_id, :comment, :charge).merge(book_room_id: params[:book_room_id])
  end


end
