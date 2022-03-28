class UserPostMessagesController < ApplicationController

  def create
    UserPostMessage.create(user_post_message_params)
    redirect_to user_post_post_rooms_path(params[:user_post_id])
  end

  private

  def user_post_message_params
    params.permit(:content).merge(post_room_id: params[:post_room_id], user_id: current_user.id)
  end

end
