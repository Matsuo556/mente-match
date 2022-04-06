class BookMessagesController < ApplicationController

  def create
    @book_message = BookMessage.new(book_message_params)
    #メッセージがuserによるものだったらis_user=true, biz_userによるものだったらis_user=false
    if user_signed_in?
      @book_message.is_user = true
    elsif biz_user_signed_in?
      @book_message.is_user = false
    end

    book_room = @book_message.book_room
    #マッチングが成立している場合はbook_matchのshowアクションへ
    if @book_message.save && book_room.book_match
      redirect_to book_book_room_book_match_path(params[:book_id], book_room.id, book_room.book_match.id) and return
    elsif book_room.book_match
      redirect_to book_book_room_book_match_path(params[:book_id], book_room.id, book_room.book_match.id) and return
    end

    #マッチングが成立していない場合はbook_roomのindexアクションへ
    if @book_message.save
      redirect_to book_book_rooms_path(params[:book_id]) and return
    else
      redirect_to book_book_rooms_path(params[:book_id]) and return
    end

  end

  private

  def book_message_params
    params.permit(:content).merge(book_room_id: params[:book_room_id])
  end


end
