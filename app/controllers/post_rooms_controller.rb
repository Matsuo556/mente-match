class PostRoomsController < ApplicationController

  def index
  end


  def create
    PostRoom.create(post_room_params)
    user_post = UserPost.find(params[:user_post_id])
    redirect_to  user_post_post_rooms_path(user_post.id)

  end

  private
  
  def post_room_params
   params.require(:post_room).permit(user_id: params[:post_room][:user_id]).merge(user_post_id: params[:user_post_id], user_id: params[:post_room][:user_id], biz_user_id: current_biz_user.id)
  end

end
