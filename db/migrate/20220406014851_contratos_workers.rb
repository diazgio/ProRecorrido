class ContratosWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos_workers, id: false do |t|
      t.belongs_to :contrato
      t.belongs_to :worker
    end
  end
end
