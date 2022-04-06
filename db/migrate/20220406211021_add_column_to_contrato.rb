class AddColumnToContrato < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :duration, :integer, default: 0
    add_column :contratos, :start_hour, :integer, array: true, default: []
    add_column :contratos, :end_hour, :integer, array: true, default: []
  end
end
