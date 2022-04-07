class CreateContratoWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :contrato_workers do |t|
      t.references :contrato, null: false, foreign_key: true
      t.references :worker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
