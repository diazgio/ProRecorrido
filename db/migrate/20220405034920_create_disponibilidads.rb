class CreateDisponibilidads < ActiveRecord::Migration[7.0]
  def change
    create_table :disponibilidads do |t|
      t.integer :hora
      t.string :fecha
      t.references :guardian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
