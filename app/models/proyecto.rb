class Proyecto < ApplicationRecord
  has_many :contratos, dependent: :destroy

  validates :nombre_empresa, presence: true
end
