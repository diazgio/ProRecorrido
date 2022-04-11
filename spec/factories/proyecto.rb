# frozen_string_literal: true

FactoryBot.define do
  factory :proyecto do
    nombre_empresa { Faker::Lorem.sentence }
  end
end
