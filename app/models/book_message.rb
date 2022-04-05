class BookMessage < ApplicationRecord
  belongs_to :book_room

  validates :content,       presence: true
  validates :is_user,       inclusion: { in: [true, false] }
  validates :book_room_id,  presence: true
end
