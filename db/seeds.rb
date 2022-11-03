# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "destroying everything"

User.destroy_all
Category.destroy_all
Tag.destroy_all

puts "creating users"

user1 = User.create(email:"test1@test.com", password: "123456", first_name: "Mustak", last_name:"hi", admin: true, author: false )
user2 = User.create(email:"test2@test.com", password: "123456", first_name: "Rory", last_name:"hi", admin: false, author: false )

puts "user created #{User.count} users"

puts "creating categories"

category1 = Category.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
category2 = Category.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
category3 = Category.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
category4 = Category.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")

puts "creating tags"

tag1 = Tag.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
tag2 = Tag.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
tag3 = Tag.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
tag4 = Tag.create(title: "test", meta_title: "meta test", content: "test content", slug: "slug test")
