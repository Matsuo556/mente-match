class PostMessagesController < ApplicationController

  def create
    @post_message = PostMessage.new(post_message_params)
  
    #メッセージがuserによるものだったらis_user=true, biz_userによるものだったらis_user=false
    if user_signed_in?
      @post_message.is_user = true
    elsif biz_user_signed_in?
      @post_message.is_user = false
    end

    if @post_message.save
      redirect_to user_post_post_rooms_path(params[:user_post_id])
    else
      redirect_to user_post_post_rooms_path(params[:user_post_id])
    end
  end



  private

  def post_message_params
    params.permit(:content).merge(post_room_id: params[:post_room_id])
  end

end
