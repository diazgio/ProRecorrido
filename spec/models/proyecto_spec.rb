# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Proyecto, type: :model do
  describe 'attributes' do
    it {
      is_expected.to have_attributes(
        id: nil,
        nombre_empresa: nil,
        created_at: nil,
        updated_at: nil
      )
    }
  end

  describe 'relations' do
    it 'has many contratos' do
      relation = described_class.reflect_on_association(:contratos)
      expect(relation.macro).to eq :has_many
    end
  end

  describe 'validations' do
    it 'is not valid without a nombre de empresa' do
      proyecto = Proyecto.new(nombre_empresa: nil)
      expect(proyecto).to_not be_valid
    end
  end
end
