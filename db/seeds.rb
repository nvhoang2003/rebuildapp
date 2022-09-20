# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 14.times do |n|
#   name = Faker::Name.name
#   description = name+" là 1 tác giả đầy tài năng và tâm huyết"
#   Author.create!(name: name,
#   description: description)
#   end

14.times do |n|
    name = Faker::Name.name
    author_id = 1
    Story.create!(name: name,
                  author_id: author_id)
    end