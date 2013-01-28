FactoryGirl.define do
	factory :courses do |f|
		f.title { Faker::Lorem.words }
		f.description { Faker::Lorem.paragraph }
		f.course_id {Faker::Lorem.word + ' ' + Random(100..999) }
		#f.prerequisites { } #should be array of other courses
		f.credits { Random(1..6) }
	end
end