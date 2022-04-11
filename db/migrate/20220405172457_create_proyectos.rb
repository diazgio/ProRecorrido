# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class CreateProyectos < ActiveRecord::Migration[7.0]
  def change
    create_table :proyectos do |t|
      t.string :nombre_empresa

      t.timestamps
    end
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
