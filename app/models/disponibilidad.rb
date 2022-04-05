class Disponibilidad < ApplicationRecord
  belongs_to :person
  has_many :guardias
  has_many :confirmaciones, through: :guardias
end
