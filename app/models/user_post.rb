class UserPost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :menu
  has_one :post_room

  validates :requested_at, presence: true
  validates :user_id, presence: true
  validates :menu_id, numericality: { other_than: 1, message: "can't be blank"}

  #ransackで特定日付を検索したい場合にモデルからデータを持ってくる
  # ransacker :requested_at, callable: proc { Arel.sql('DATE(requested_at)') }

end
