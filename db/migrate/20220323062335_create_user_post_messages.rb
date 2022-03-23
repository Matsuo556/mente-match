class CreateUserPostMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_post_messages do |t|
      t.text        :content,       null: false
      t.references  :post_room,     null: false, foreign_key: true
      t.references  :user,          null: false, foreign_key: true

      t.timestamps
    end
  end
end
