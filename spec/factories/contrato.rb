# frozen_string_literal: true

FactoryBot.define do
  factory :contrato do
    proyecto_id { nil }
    duration { 0 }
    start_hour { [] }
    end_hour { [] }
    num_sem { 1 }
    nombre_c { Faker::Lorem.sentence }
  end
end
