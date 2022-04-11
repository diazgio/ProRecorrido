# frozen_string_literal: true

FactoryBot.define do
  factory :disponibilidad do
    hora { 1 }
    fecha { 0 }
    worker_id { nil }
    contrato_id { nil }
    valor { false }
    semana { 10 }
    year { 2022 }
    confirmed { false }
  end
end
