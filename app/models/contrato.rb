class Contrato < ApplicationRecord
  belongs_to :proyecto

  has_many :disponibilidads
  has_many :contrato_workers
  has_many :workers, through: :contrato_workers

  scope :contratos_ordenados, -> { order(created_at: :desc).includes(:proyecto) }

  def crear_disponibilidads
    cantidad_horas = self.start_hour.each_with_index.map{|val, index| self.end_hour[index] - val }
    
    self.workers.each do |worker|
      self.start_hour.each_with_index do |hour,index|
        cantidad_horas[index].times do |n|
          Disponibilidad.create(
            hora: hour + n,
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
end
