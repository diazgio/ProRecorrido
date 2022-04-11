# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe Worker, type: :model do
  describe 'attributes' do
    it {
      is_expected.to have_attributes(
        id: nil,
        nombre: nil,
        created_at: nil,
        updated_at: nil
      )
    }
  end

  describe 'relations' do
    it 'has many question disponibilidads' do
      relation = described_class.reflect_on_association(:disponibilidads)
      expect(relation.macro).to eq :has_many
    end

    it 'should have many contratos' do
      subject { described_class.new }
      assc = described_class.reflect_on_association(:contratos)
      expect(assc.macro).to eq :has_many
    end
  end

  describe 'validations' do
    it 'is not valid without a nombre' do
      worker = Worker.new(nombre: nil)
      expect(worker).to_not be_valid
    end
  end
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Layout/EmptyLineAfterMagicComment
