#add factory_girl_rails gem, avoids fixtures
#add Faker gem for more random input

FactoryGirl.define do
	factory :student do |f|
		f.firstname { Faker::Name.first_name }
		f.lastname { Faker::Name.last_name }
		#f.username 
		#f.student_id
		#f.programs
	end
end