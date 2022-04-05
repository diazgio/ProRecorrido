class Guardian < ApplicationRecord
  has_many :guardias, class_name: "Guardia", foreign_key: "guardian_id"
end
