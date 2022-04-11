# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContratoWorker, type: :model do
  describe 'attributes' do
    it {
      is_expected.to have_attributes(
        id: nil,
        contrato_id: nil,
        worker_id: nil,
        created_at: nil,
        updated_at: nil
      )
    }
  end

  describe 'relations' do
    it 'belongs to a proyecto' do
      relation = described_class.reflect_on_association(:contrato)
      expect(relation.macro).to eq :belongs_to
    end

    it 'belongs to a worker' do
      relation = described_class.reflect_on_association(:worker)
      expect(relation.macro).to eq :belongs_to
    end
  end
end
