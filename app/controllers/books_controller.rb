class BooksController < ApplicationController
  
  def index
    @biz_users = BizUser.all.page(params[:page]).per(10)
    @q = BizUser.ransack(params[:q])
  end

  def search
    # params[:q]がnilではない且つ、params[:q][:name]がnilではないとき（商品名の欄が入力されているとき）
    # if params[:q] && params[:q][:name]と同じような意味合い
    if params[:q]&.dig(:city)
      # squishメソッドで余分なスペースを削除する
      city_squished_keywords = params[:q][:city].squish.delete('　')
      ## 半角スペースを区切り文字として配列を生成し、paramsに入れる
      params[:q][:city_cont_any] = city_squished_keywords.split(" ")
    end
    if params[:q]&.dig(:name)
      # squishメソッドで余分なスペースを削除する
      name_squished_keywords = params[:q][:name].squish.delete('　')
      ## 半角スペースを区切り文字として配列を生成し、paramsに入れる
      params[:q][:name_cont_any] = name_squished_keywords.split(" ")
    end
    @q = BizUser.ransack(params[:q])
    @biz_users = @q.result.page(params[:page]).per(10)
    binding.pry
  end

  def show
    @biz_user = BizUser.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to action: :index
    else
      render :new
    end
  end


  private

  def book_params
    params.require(:book).permit(:requested_at, :menu_id, :comment).merge(user_id: current_user.id)
  end

end
