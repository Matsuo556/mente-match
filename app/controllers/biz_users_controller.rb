class BizUsersController < ApplicationController

  def show
    @post_rooms = PostRoom.all.order("created_at DESC")
  end

end
