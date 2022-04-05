class Contrato < ApplicationRecord
  has_many :guardias, class_name: "Guardia", foreign_key: "contrato_id"
end
