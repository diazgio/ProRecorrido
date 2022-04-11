# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class AddColumnContrato < ActiveRecord::Migration[7.0]
  def change
    add_column :contratos, :num_sem, :integer, default: 1
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
