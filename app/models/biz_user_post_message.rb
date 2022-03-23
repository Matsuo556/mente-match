class BizUserPostMessage < ApplicationRecord
  belongs_to :post_room
  belongs_to :biz_user

  validates :content,       presence: true
  validates :post_room_id,  presence: true
  validates :biz_user_id,   presence: true
end
