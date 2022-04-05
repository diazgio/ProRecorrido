class Proyecto < ApplicationRecord
  has_many :guardias, dependent: :destroy
  has_many :contratos, dependent: :destroy
end
