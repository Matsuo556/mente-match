class PostMatchesController < ApplicationController


  def new
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_match = PostMatch.new
  end

  def create
    @post_match = PostMatch.new(post_match_params)
    unless @post_match.save
      @user_post = UserPost.find(params[:user_post_id])
      @post_room = PostRoom.find(params[:post_room_id])
      render :new
    end
  end

  def show
    @post_match = PostMatch.find(params[:id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_messages = @post_room.post_messages
  end

  def edit
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_match = PostMatch.find(params[:id])
  end

  def update
    @post_match = PostMatch.find(params[:id])
    if @post_match.update(post_match_params)
      redirect_to action: :show
    else
      @user_post = UserPost.find(params[:user_post_id])
      @post_room = PostRoom.find(params[:post_room_id])
      render :edit
    end
  end


  private

  def post_match_params
    params.require(:post_match).permit(:maintain_at, :menu_id, :comment, :charge).merge(post_room_id: params[:post_room_id])
  end

end
