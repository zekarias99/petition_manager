FactoryGirl.define do
  factory :petition do |f|
    f.approved true
    f.exception ["waiver", "substitution"].sample
    f.reason { Faker::Lorem.words }
  end
end
