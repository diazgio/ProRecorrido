class CreateContratos < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos do |t|
      t.references :proyecto, null: false, foreign_key: true, index: true
      t.references :persons, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
