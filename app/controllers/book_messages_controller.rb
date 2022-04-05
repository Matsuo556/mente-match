class BookMessagesController < ApplicationController

  def create
    @book_message = BookMessage.new(book_message_params)
  binding.pry
    #メッセージがuserによるものだったらis_user=true, biz_userによるものだったらis_user=false
    if user_signed_in?
      @book_message.is_user = true
    elsif biz_user_signed_in?
      @book_message.is_user = false
    end

    #post_room = @post_message.post_room
    #マッチングが成立している場合はpost_matchのshowアクションへ
    #if @post_message.save && post_room.post_match
      #redirect_to user_post_post_room_post_match_path(params[:user_post_id], post_room.id, post_room.post_match.id) and return
    #elsif post_room.post_match
      #redirect_to user_post_post_room_post_match_path(params[:user_post_id], post_room.id, post_room.post_match.id) and return
    #end

    #マッチングが成立していない場合はpost_roomのindexアクションへ
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
