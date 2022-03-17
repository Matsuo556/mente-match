class UserPost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :menu

  validates :requested_at, presence: true
  validates :user_id, presence: true
  validates :menu_id, numericality: { other_than: 1, message: "can't be blank"}
end
