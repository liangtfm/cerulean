# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@cerulean.com', password: 'coldbrew', password_confirmation: 'coldbrew', ip_address: '211.219.75.6', latitude: 37.57, longitude: 126.98, address: "Seoul, South Korea", admin: true)
User.create(email: 'liangsta@gmail.com', ip_address: '209.95.50.164', latitude: 40.7421, longitude: -74.0018, address: "New York, NY")
User.create(email: 'hello@anthonyliang.com', ip_address: '198.8.80.5', latitude: 34.0438, longitude: -118.2512, address: "Los Angeles, CA")
