FactoryBot.define do
  factory :worker do
    nombre { Faker::Lorem.sentence }
  end
end
