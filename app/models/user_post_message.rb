class UserPostMessage < ApplicationRecord
  belongs_to :post_room
  belongs_to :user

  validates :content,       presence: true
  validates :post_room_id,  presence: true
  validates :user_id,       presence: true
  
end
