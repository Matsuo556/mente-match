class PostRoom < ApplicationRecord
  belongs_to :user_post
  belongs_to :user
  belongs_to :biz_user
  has_many :post_messages, dependent: :destroy
  # has_many :user_post_messages
  # has_many :biz_user_post_messages

  validates :user_post_id,  presence: true
  validates :user_id,       presence: true
  validates :biz_user_id,   presence: true

end
