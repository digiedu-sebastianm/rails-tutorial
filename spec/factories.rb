FactoryGirl.define do
	factory :user do
		sequence(:name) { |n| "Persons #{n}"}
		sequence(:email) {|n| "person_#{n}@email.com"}
		password "foobar"
		password_confirmation "foobar"

		factory :admin do
			admin true
		end
	end
end

FactoryGirl.define do
	factory :micropost do
		content "Lorem ipsum"
		user
	end
end