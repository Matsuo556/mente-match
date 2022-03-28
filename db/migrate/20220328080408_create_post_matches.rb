class CreatePostMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :post_matches do |t|
      t.datetime   :maintain_at,        null: false
      t.integer    :charge,             null: false
      t.references :post_room,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
