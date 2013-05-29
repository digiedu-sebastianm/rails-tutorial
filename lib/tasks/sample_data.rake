namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User",
					email: "example@railstutorial.rog",
					password: "foobar",
					password_confirmation: "foobar")
		99.times do |n|
			name = Faker::Name.name
			email = "example#{n+1}@example.com"
			password = "parola123"
			User.create!(name: name, email: email, password: password, password_confirmation: password)
		end
	end
end