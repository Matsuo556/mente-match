class PostRoomsController < ApplicationController

  def index
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(@user_post.post_room.id)
    @post_messages = @post_room.post_messages
  end


  def create
    PostRoom.create(post_room_params)
    user_post = UserPost.find(params[:user_post_id])
    redirect_to  user_post_post_rooms_path(user_post.id)
  end

  def destroy
    @post_room = PostRoom.find(params[:id])
    @post_room.destroy
    binding.pry
    redirect_to user_path(current_user.id)
  end

  private
  
  def post_room_params
   params.require(:post_room).permit(user_id: params[:post_room][:user_id]).merge(user_post_id: params[:user_post_id], user_id: params[:post_room][:user_id], biz_user_id: current_biz_user.id)
  end

end
