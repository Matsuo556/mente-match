class PostRoom < ApplicationRecord
  belongs_to :user_post
  belongs_to :user
  belongs_to :biz_user

end
