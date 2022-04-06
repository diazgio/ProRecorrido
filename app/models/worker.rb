class Worker < ApplicationRecord
  has_many :disponibilidads
  has_and_belongs_to_many :contratos
end
