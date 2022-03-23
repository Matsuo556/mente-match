class BizUserPostMessage < ApplicationRecord
  belongs_to :post_room
  belongs_to :biz_user
end
