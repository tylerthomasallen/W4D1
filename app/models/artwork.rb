class Artwork < ApplicationRecord
  
  validates :title, :image_url, :artist_id, presence: true
  validates_uniqueness_of :artist_id, :scope => [:title]
  
  belongs_to :artist, 
    foreign_key: :artist_id,
    class_name: 'User'
    
  has_many :shares,
    foreign_key: :artwork_id,
    class_name: :Share
    
  has_many :shared_viewers,
    through: :shares,
    source: :viewers
    

end 