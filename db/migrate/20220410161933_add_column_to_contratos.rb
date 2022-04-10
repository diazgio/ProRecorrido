class AddColumnToContratos < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :nombre_c, :string
  end
end
