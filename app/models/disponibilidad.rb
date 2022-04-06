class Disponibilidad < ApplicationRecord
  belongs_to :contrato
  belongs_to :worker
  has_many :guardias
  has_many :confirmaciones, through: :guardias
end
