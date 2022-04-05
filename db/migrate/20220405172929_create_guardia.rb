class CreateGuardia < ActiveRecord::Migration[7.0]
  def change
    create_table :guardia do |t|
      t.integer :hora
      t.string :fecha
      t.references :proyecto, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end