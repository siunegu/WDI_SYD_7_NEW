# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

task_2 = Todo.create ({
	name:"Gotta Get Get",
	done: true
	})

task_1 = Todo.create ({
	name:"Nobody Nobody",
	done: false
	})

# Normal 
User.create({
  email: "jondoe@example.com",
  password: "password",
  password_confirmation: "password",
})

# Admin
User.create({
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  admin: 'true'
})