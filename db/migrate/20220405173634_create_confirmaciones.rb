class CreateConfirmaciones < ActiveRecord::Migration[7.0]
  def change
    create_table :confirmaciones do |t|
      t.references :guardia, null: false, foreign_key: true, index: true
      t.references :disponibilidad, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
