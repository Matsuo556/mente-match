class PostMatchesController < ApplicationController


  def index
  end


  def new
    @user_post = UserPost.find(params[:user_post_id])
    @post_room = PostRoom.find(params[:post_room_id])
    @post_match = PostMatch.new
  end

  def create
  end




end
