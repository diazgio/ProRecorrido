class Disponibilidad < ApplicationRecord
  belongs_to :contrato
  belongs_to :worker

  enum fecha: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

  validates :hora, presence: true
  validates :fecha, presence: true
end
