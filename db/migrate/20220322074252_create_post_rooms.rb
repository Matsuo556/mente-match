class CreatePostRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :post_rooms do |t|
      t.references :user_post,           null: false, foreign_key: true
      t.references :user,                null: false, foreign_key: true
      t.references :biz_user,            null: false, foreign_key: true



      t.timestamps
    end
  end
end
