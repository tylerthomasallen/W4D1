# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'Tyler')
user2 = User.create(username: 'Brett')
user3 = User.create(username: 'Jimbo')

art1 = Artwork.create(title: 'man', image_url: 'man.com', artist_id: 1)
art2 = Artwork.create(title: 'girl', image_url: 'girl.com', artist_id: 2)
art3 = Artwork.create(title: 'dog', image_url: 'dog.com', artist_id: 2)

share1 = Share.create(viewer_id: 1, artwork_id: 2)
share1 = Share.create(viewer_id: 2, artwork_id: 1)
share1 = Share.create(viewer_id: 3, artwork_id: 3)
share1 = Share.create(viewer_id: 3, artwork_id: 2)



