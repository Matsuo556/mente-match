class PostRoomsController < ApplicationController

  def index
  end


  def create
    post_room = PostRoom.new(post_room_params)
    binding.pry
    PostRoom.create!(post_room_params)
    redirect_to root_path
  end

  private
  
  def post_room_params
   params.require(:post_room).permit(user_id: params[:post_room][:user_id]).merge(user_post_id: params[:user_post_id], user_id: params[:post_room][:user_id], biz_user_id: current_biz_user.id)
  end

end
