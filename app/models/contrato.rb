class Contrato < ApplicationRecord
  belongs_to :proyecto

  has_many :disponibilidads
  has_many :contrato_workers
  has_many :workers, through: :contrato_workers

  accepts_nested_attributes_for :workers, reject_if: :all_blank, allow_destroy: true

  def metodo_del_modelo(parametros)
    # logica
    Disponibilidad.create()
  end
end
