class Contrato < ApplicationRecord
  belongs_to :proyecto
  has_many :disponibilidads
  has_and_belongs_to_many :workers
end
