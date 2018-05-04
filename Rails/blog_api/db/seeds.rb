# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
	user1 = User.where(name: Faker::Internet.user_name).create
	user2 = User.where(name: Faker::Internet.user_name).create
	post = user1.posts.create(
		title: Faker::OnePiece.character,
		body: Faker::OnePiece.quote )
	post.comments.create(body: Faker::OnePiece.akuma_no_mi, user: user2)
end