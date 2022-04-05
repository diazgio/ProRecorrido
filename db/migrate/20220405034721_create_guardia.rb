class CreateGuardia < ActiveRecord::Migration[7.0]
  def change
    create_table :guardia do |t|
      t.integer :hora
      t.string :fecha
      t.references :contrato, null: false, foreign_key: true

      t.timestamps
    end
  end
end
