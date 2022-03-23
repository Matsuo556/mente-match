class UserPostMessage < ApplicationRecord
  belongs_to :post_room
  belongs_to :user

end
