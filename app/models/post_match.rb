class PostMatch < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :post_room
  belongs_to :menu


  validates :maintain_at,  presence: true
  validates :charge,       presence: true, numericality: { only_integer: true, message: 'is invalid. Input half-width number.' }
  validates :post_room_id,   presence: true
  validates :menu_id, numericality: { other_than: 1, message: "can't be blank"}



end
