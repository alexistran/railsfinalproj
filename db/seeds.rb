# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

# Make users
%w(Myra Kim Sabrina Alexis).each do |name|
	User.create name: name, email: name+"@email.com", password: "password"
end


# Make posts
%w(Monday Tuesday Wednesday Thursday Friday). each do |name|
	Post.create title: name, user_id: rand(1..4), text: "I love "+ name
	end

# Make comments
%w(Myra Kim Sabrina Alexis).each do |name|
	Comment.create commenter: name, user_id: rand(1..4), body: "cookies", post_id: rand(1..10)
end 