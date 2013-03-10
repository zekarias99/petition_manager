FactoryGirl.define do
  factory :faculty do |f|
  	f.firstname { Faker::Name.first_name }
  	f.lastname { Faker::Name.last_name }
  	f.email { Faker::Internet.email }
    #f.faculty_id { [95000000..99999999].sample }
    #f.petitions Factory.create(:petition)
    f.password { Faker::Lorem.word }
  end
end