class Contrato < ApplicationRecord
  belongs_to :proyecto
  belongs_to :person
end
