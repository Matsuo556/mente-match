class PostMatch < ApplicationRecord
  belongs_to :post_room

  validates :maintain_at,  presence: true
  validates :charge,       presence: true
  validates :post_room_id,   presence: true

end
