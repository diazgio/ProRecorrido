# frozen_string_literal: true

FactoryBot.define do
  factory :worker do
    nombre { Faker::Lorem.sentence }
  end
end
