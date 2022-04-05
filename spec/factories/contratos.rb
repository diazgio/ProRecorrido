FactoryBot.define do
  factory :contrato do
    nombre_emp { Faker::Lorem.sentence }
  end
end
