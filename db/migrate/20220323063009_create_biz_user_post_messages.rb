class CreateBizUserPostMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :biz_user_post_messages do |t|
      t.text        :content,       null: false
      t.references  :post_room,     null: false, foreign_key: true
      t.references  :biz_user,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
