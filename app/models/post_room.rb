class PostRoom < ApplicationRecord
  belongs_to :user_post
  belongs_to :user
  belongs_to :biz_user

  validates :user_post_id
  validates :user_id
  validates :biz_user_id

end
