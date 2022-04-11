# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class AddColumnToContratos < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :nombre_c, :string
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
