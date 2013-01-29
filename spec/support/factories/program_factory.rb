FactoryGirl.define do
	factory :program do |f|
		f.title { Faker::Lorem.words }
		f.owner { Faker::Name.name }
		#f.courses { } #array of courses
	end
end
