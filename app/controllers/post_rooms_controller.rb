class PostRoomsController < ApplicationController

  def index
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(@user_post.post_room.id)
    @user_post_messages = UserPostMessage.includes(:user).order("created_at ASC")
    @biz_user_post_messages = BizUserPostMessage.includes(:biz_user).order("created_at ASC")
  end


  def create
    PostRoom.create(post_room_params)
    user_post = UserPost.find(params[:user_post_id])
    # user_post_messageコントローラーのinexアクションに送る場合のpost_room情報取得
    # post_room = user_post.post_room
    redirect_to  user_post_post_rooms_path(user_post.id)
    # user_post_messageコントローラーのinexアクションに送る場合のパス
    # redirect_to  user_post_post_room_user_post_messages_path(user_post.id, post_room.id)

  end

  private
  
  def post_room_params
   params.require(:post_room).permit(user_id: params[:post_room][:user_id]).merge(user_post_id: params[:user_post_id], user_id: params[:post_room][:user_id], biz_user_id: current_biz_user.id)
  end

end
