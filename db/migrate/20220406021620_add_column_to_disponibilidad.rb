class AddColumnToDisponibilidad < ActiveRecord::Migration[7.0]
  def change
    add_reference :disponibilidads, :contrato, index: true
    add_column :disponibilidads, :valor, :boolean, default: false
    add_column :disponibilidads, :semana, :integer
    add_column :disponibilidads, :year, :integer
    add_column :disponibilidads, :confirmed, :boolean, default: false
  end
end
