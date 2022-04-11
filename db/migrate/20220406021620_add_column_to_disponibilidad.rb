# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation
class AddColumnToDisponibilidad < ActiveRecord::Migration[7.0]
  def change
    add_reference :disponibilidads, :contrato, index: true
    add_column :disponibilidads, :valor, :boolean, default: false
    add_column :disponibilidads, :semana, :integer
    add_column :disponibilidads, :year, :integer
    add_column :disponibilidads, :confirmed, :boolean, default: false
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
