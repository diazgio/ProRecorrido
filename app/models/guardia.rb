class Guardia < ApplicationRecord
  belongs_to :contrato
  has_many :guardians
end
