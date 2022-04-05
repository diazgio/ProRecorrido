class CreateDisponibilidads < ActiveRecord::Migration[7.0]
  def change
    create_table :disponibilidads do |t|
      t.integer :hora
      t.string :fecha
      t.references :persons, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
