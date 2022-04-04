class BooksController < ApplicationController
  
  def index
    @biz_users = BizUser.all.page(params[:page]).per(10)
  end

end
