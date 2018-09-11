class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.integer :artist_id, null: false
      t.integer :artwork_id, null: false
      t.timestamps
    end
  end
end
