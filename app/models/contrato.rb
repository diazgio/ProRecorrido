class Contrato < ApplicationRecord
  belongs_to :proyecto

  has_many :disponibilidads
  has_many :contrato_workers
  has_many :workers, through: :contrato_workers

  after_create :crear_disponibilidads

  def crear_disponibilidads
    self.workers.each do |worker|
      self.start_hour.each_with_index do |hour,index|
        Disponibilidad.create(
          hora: hour,
          fecha: index,
          worker_id: worker.id,
          contrato_id: self.id,
          valor: false,
          semana: nil,
          year: nil,
          confirmed: false
        )
      end
    end
  end
end
