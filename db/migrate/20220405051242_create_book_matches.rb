class CreateBookMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :book_matches do |t|
      t.datetime   :start,        null: false
      t.datetime   :end,          null: false
      t.integer    :menu_id,      null: false
      t.text       :comment
      t.integer    :charge,       null: false
      t.references :book_room,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
