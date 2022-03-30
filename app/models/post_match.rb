class PostMatch < ApplicationRecord
  belongs_to :post_room

  validates :maintain_at,  presence: true
  validates :charge,       presence: true, numericality: { only_integer: true, message: 'is invalid. Input half-width number.' }
  validates :post_room_id,   presence: true


end
