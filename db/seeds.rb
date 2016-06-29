# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Story.delete_all

Story.create( content: "Pizza is yummy!"                    )
Story.create( content: "Veggies are tasty and nutritious."  )
Story.create( content: "Salt is the best ingredient."       )
