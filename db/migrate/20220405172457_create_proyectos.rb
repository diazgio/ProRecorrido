class CreateProyectos < ActiveRecord::Migration[7.0]
  def change
    create_table :proyectos do |t|
      t.string :nombre_empresa

      t.timestamps
    end
  end
end
