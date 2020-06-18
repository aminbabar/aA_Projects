# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


user1 = User.create!(name: 'Picasso')
user2 = User.create!(name: 'Matisse')
user3 = User.create!(name:'Leonardo')

artwork1 = Artwork.create!(title: 'Picassos painting', image_url: 'URL1', artist_id: user1.id)
artwork2 = Artwork.create!(title: 'Matisses sculpture', image_url:  'URL2', artist_id: user2.id)
artwork3 = Artwork.create!(title: 'Leonardos drawing', image_url: 'URL3', artist_id: user3.id)
artwork4 = Artwork.create!(title: 'Leonardos second drawing', image_url: 'URL4', artist_id: user3.id)

share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user1.id)
share2 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user3.id)
share3 = ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user2.id)