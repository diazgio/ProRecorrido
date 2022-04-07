class Worker < ApplicationRecord
  has_many :disponibilidads
  has_many :contrato_workers
  has_many :contratos, through: :contrato_workers

  validates :nombre, presence: true
end
