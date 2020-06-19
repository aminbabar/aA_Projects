# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Cat.create([{ birth_date: '11/02/1995', color: 'orange', name: 'Toby', sex: 'M', 
                    description: 'our first cat'}])

cat2 = Cat.create([{ birth_date: '10/02/1997', color: 'black', name: 'Amin', sex: 'M', 
                    description: 'our second cat'}])