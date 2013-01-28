FactoryGirl.define do
	factory :programs do |f|
		f.title { Faker::Lorem.words }
		f.owner { Faker::Name.name }
		#f.courses { } #array of courses
	end
end