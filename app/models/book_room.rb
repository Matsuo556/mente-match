class BookRoom < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :biz_user
  has_many :book_messages, dependent: :destroy
  # has_one :book_match

  validates :book_id,       presence: true
  validates :user_id,       presence: true
  validates :biz_user_id,   presence: true

end
