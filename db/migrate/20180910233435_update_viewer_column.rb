class UpdateViewerColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :shares, :artwork_id, :viewer_id
    add_index :shares, [:viewer_id, :artist_id], unique: true
    add_index :shares, :artist_id
  end
end
