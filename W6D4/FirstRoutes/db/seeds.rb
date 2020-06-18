# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!('Picasso')
user2 = User.create!('Matisse')
user3 = User.create!('Leonardo')

artwork1 = Artwork.create!('Picassos painting', 'URL1', user1.id)
artwork2 = Artwork.create!('Matisses sculpture', 'URL2', user2.id)
artwork3 = Artwork.create!('Leonardos drawing', 'URL3', user3.id)
artwork4 = Artwork.create!('Leonardos second drawing', 'URL4', user3.id)

# share1 = ArtworkShare.create!( , )
# share2 = ArtworkShare.create!( , )
# share3 = ArtworkShare.create!( , )