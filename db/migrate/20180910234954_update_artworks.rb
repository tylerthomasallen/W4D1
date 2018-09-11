class UpdateArtworks < ActiveRecord::Migration[5.2]
  def change
    
    rename_column :shares, :artist_id, :artwork_id
  end
end
