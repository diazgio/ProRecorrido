# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class Contrato < ApplicationRecord
  belongs_to :proyecto

  has_many :disponibilidads
  has_many :contrato_workers
  has_many :workers, through: :contrato_workers

  scope :contratos_ordenados, -> { order(created_at: :desc).includes(:proyecto) }
  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def crear_disponibilidads
    cantidad_horas = start_hour.each_with_index.map { |val, index| end_hour[index] - val }

    workers.each do |worker|
      start_hour.each_with_index do |hour, index|
        cantidad_horas[index].times do |n|
          Disponibilidad.create(
            hora: hour + n,
            fecha: index,
            worker_id: worker.id,
            contrato_id: id,
            valor: false,
            semana: nil,
            year: nil,
            confirmed: false
          )
        end
      end
    end
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
