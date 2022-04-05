FactoryBot.define do
  factory :guardian do
    nombre { Faker::Lorem.sentence }
  end
end
