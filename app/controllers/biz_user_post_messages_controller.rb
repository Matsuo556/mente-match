class BizUserPostMessagesController < ApplicationController

  def create
    BizUserPostMessage.create(biz_user_post_message_params)
    redirect_to user_post_post_rooms_path(params[:user_post_id])
  end

  private

  def biz_user_post_message_params
    params.permit(:content).merge(post_room_id: params[:post_room_id], biz_user_id: current_biz_user.id)
  end
end
