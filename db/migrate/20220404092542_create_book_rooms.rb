class CreateBookRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :book_rooms do |t|
      t.references :book,                null: false, foreign_key: true
      t.references :user,                null: false, foreign_key: true
      t.references :biz_user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
