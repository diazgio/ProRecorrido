# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class CreateContratos < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos do |t|
      t.references :proyecto, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
