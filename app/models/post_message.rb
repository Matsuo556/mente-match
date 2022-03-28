class PostMessage < ApplicationRecord
  belongs_to :post_room, dependent: :destroy

  validates :content,       presence: true
  validates :is_user,       inclusion: { in: [true, false] }
  validates :post_room_id,  presence: true

end
