# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Video.destroy_all

customer = User.create! :email => "nimbleltd@gmail.com", :password => "asdfasdf", :password_confirmation => "asdfasdf"
employee = User.new :email => "bob@gmail.com", :password => "asdfasdf", :password_confirmation => "asdfasdf"
employee.employee = true
employee.save!

employee = User.new :email => "sally@sally.com", :password => "asdfasdf", :password_confirmation => "asdfasdf"
employee.employee = true
employee.save!


Video.create! :title => "Jay Jamming", :youtube_url => "http://www.youtube.com/watch?v=vSOYE8iLmPk", :state => "submitted", :customer_id => customer.id
Video.create! :title => "Rockets with Glenn", :youtube_url => "http://www.youtube.com/watch?v=w3MPU7uf7l8", :state => "submitted", :customer_id => customer.id
Video.create! :title => "Derby Race", :youtube_url => "http://www.youtube.com/watch?v=y44E6btjAkA", :state => "submitted", :customer_id => customer.id
