# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post = Post.create(
	title: "Hello World",
	author: "Jane Birkin",
	content: "Lorem Ipsum dolar sit amet."
)
post.comments.create(
	author: "Jack Sparrow",
	content: "This blog is shit!",
	post_id: 1
)	
post.comments.create(
	author: "Jack Sparffrow",
	content: "This blogrrr is shit!",
	post_id: 1
)	