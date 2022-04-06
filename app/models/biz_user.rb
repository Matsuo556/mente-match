class BizUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  has_many :post_rooms
  has_many :biz_user_post_messages
  has_many :books
  has_many :book_rooms

  
end
