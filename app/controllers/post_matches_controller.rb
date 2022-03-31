class PostMatchesController < ApplicationController


  def new
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_match = PostMatch.new
  end

  def create
    @post_match = PostMatch.new(post_match_params)
    unless @post_match.save
      render :new
    end
  end

  def show
    @post_match = PostMatch.find(params[:id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_messages = @post_room.post_messages
  end


  private

  def post_match_params
    params.require(:post_match).permit(:maintain_at, :menu_id, :comment, :charge).merge(post_room_id: params[:post_room_id])
  end

end