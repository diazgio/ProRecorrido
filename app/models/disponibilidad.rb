class Disponibilidad < ApplicationRecord
  belongs_to :contrato
  belongs_to :worker

  validates :hora, presence: true
  validates :fecha, presence: true
  validates :semana, presence: true
  validates :year, presence: true
end
