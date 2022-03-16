class UserPost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :user_post

  validates :requested_at, :user_id, presence: true
  validates :menu_id, numericality: { other_than: 1, message: "can't be blank"}
end
