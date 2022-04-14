class BookMatchesController < ApplicationController
  before_action :authenticate_any!, only: [:new, :show, :edit]
  before_action :user_check, only: [:new, :show, :edit]

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
