class BookMatch < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :book_room
  belongs_to :menu


  validates :start,          presence: true
  validates :end,            presence: true
  validates :charge,         presence: true, numericality: { only_integer: true, message: 'is invalid. Input half-width number.' }
  validates :book_room_id,   presence: true
  validates :menu_id, numericality: { other_than: 1, message: "can't be blank"}

end
