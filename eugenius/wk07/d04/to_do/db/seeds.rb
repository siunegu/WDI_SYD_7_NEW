# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


task_one = Todo.create(
	name: "Wash the Dishes",
	notes: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod dolorum perferendis!",
	completed: false
	)

task_two = Todo.create(
	name: "Have a Quickie",
	notes: "Quae, quos maxime quasi dolore earum qui commodi fugiat iure voluptate quas dolorem.!",
	completed: false
	)