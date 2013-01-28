#add factory_girl_rails gem, avoids fixtures
#add Faker gem for more random input

FactoryGirl.define do
	factory :student do |f|
		f.firstname { Faker::Name.first_name }
		f.lastname { Faker::Name.last_name }
		f.username { Faker::Internet.user_name }
		f.student_id { Faker::Base.Numbers (Array(100000000..999999999))}
		f.programs { Faker::Lorem.words }
	end
end