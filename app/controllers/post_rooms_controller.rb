class PostRoomsController < ApplicationController
  before_action :authenticate_any!
  before_action :user_check, only: [:index, :destroy]

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
      if user_signed_in?
        redirect_to user_path(current_user.id)
      elsif biz_user_signed_in?
        redirect_to biz_user_path(current_biz_user.id)
      end
  end

  private
  
  def post_room_params
   params.require(:post_room).permit(user_id: params[:post_room][:user_id]).merge(user_post_id: params[:user_post_id], user_id: params[:post_room][:user_id], biz_user_id: current_biz_user.id)
  end

  def authenticate_any!
    if biz_user_signed_in?
      true
    else
      authenticate_user!
    end
  end


  def user_check
    @user_post = UserPost.find(params[:user_post_id])
    binding.pry
    if user_signed_in? && current_user.id != @user_post.post_room.user_id
      redirect_to root_path
    elsif biz_user_signed_in? && current_biz_user.id != @user_post.post_room.biz_user_id
      redirect_to root_path
    end
  end

end
