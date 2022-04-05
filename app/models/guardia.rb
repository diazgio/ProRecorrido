class Guardia < ApplicationRecord
  belongs_to :proyecto
  has_many :disponibilidads
  has_many :confirmaciones, through: :disponibilidad
end