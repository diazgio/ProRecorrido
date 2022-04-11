# frozen_string_literal: true

class Disponibilidad < ApplicationRecord
  belongs_to :contrato
  belongs_to :worker

  enum fecha: %i[monday tuesday wednesday thursday friday saturday sunday]

  validates :hora, presence: true
  validates :fecha, presence: true
end
