# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Style/Documentation
