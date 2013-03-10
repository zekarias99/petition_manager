FactoryGirl.define do
  factory :petition do |f|
    f.approved 'Pending'
    f.exception ["Waiver", "Substitution"].sample
    f.reason { Faker::Lorem.words }
    f.faculty { Faker::Name.name}
  end
end
