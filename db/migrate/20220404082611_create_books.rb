class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.datetime   :requested_at,        null: false
      t.integer    :menu_id,             null: false
      t.text       :comment
      t.references :user,                null: false, foreign_key: true
      t.timestamps
    end
  end
end
