class CreatePersons < ActiveRecord::Migration[7.0]
  def change
    create_table :persons do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
