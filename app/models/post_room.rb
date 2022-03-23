class PostRoom < ApplicationRecord
  belongs_to :user_post
  belongs_to :user
  belongs_to :biz_user

  validates :user_post_id,  presence: true
  validates :user_id,       presence: true
  validates :biz_user_id,   presence: true

end
