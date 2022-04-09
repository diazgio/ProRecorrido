class AddColumnContrato < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :num_sem, :integer, default: 1
  end
end
