FactoryGirl.define do
	factory :course do |f|
		f.title { Faker::Lorem.words }
		f.description { Faker::Lorem.paragraph }
		f.course_id { Faker::Lorem.word + ' ' + Random.rand(999).to_s }
		#f.prerequisites { } #should be array of other courses
		f.credits { Random.rand(6) }
	end
end