# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe Disponibilidad, type: :model do
  describe 'attributes' do
    it {
      is_expected.to have_attributes(
        id: nil,
        hora: nil,
        fecha: 'monday',
        worker_id: nil,
        contrato_id: nil,
        valor: false,
        semana: nil,
        year: nil,
        confirmed: false,
        created_at: nil,
        updated_at: nil
      )
    }
  end

  describe 'relations' do
    it 'belongs to a contrato' do
      relation = described_class.reflect_on_association(:contrato)
      expect(relation.macro).to eq :belongs_to
    end

    it 'belongs to a worker' do
      relation = described_class.reflect_on_association(:worker)
      expect(relation.macro).to eq :belongs_to
    end
  end

  describe 'validations' do
    it 'is not valid without a hora' do
      disponibilidad = Disponibilidad.new(hora: nil)
      expect(disponibilidad).to_not be_valid
    end

    it 'is not valid without a fecha' do
      disponibilidad = Disponibilidad.new(fecha: nil)
      expect(disponibilidad).to_not be_valid
    end

    it 'is not valid without a semana' do
      disponibilidad = Disponibilidad.new(semana: nil)
      expect(disponibilidad).to_not be_valid
    end

    it 'is not valid without a year' do
      disponibilidad = Disponibilidad.new(year: nil)
      expect(disponibilidad).to_not be_valid
    end
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Metrics/BlockLength
