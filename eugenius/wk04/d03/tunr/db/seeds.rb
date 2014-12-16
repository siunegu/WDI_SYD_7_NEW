# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Normal User
User.create({
  email: "info@tunr.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now
})

#Admin User
User.create({
  email: "admin@tunr.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})