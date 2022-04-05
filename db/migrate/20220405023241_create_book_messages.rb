class CreateBookMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :book_messages do |t|
      t.text        :content,       null: false
      t.boolean     :is_user,       null: false
      t.references  :book_room,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
