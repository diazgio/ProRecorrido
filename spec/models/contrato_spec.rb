require 'rails_helper'

RSpec.describe Contrato, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attributes(
      id: nil,
      proyecto_id: nil,
      worker_id: nil,
      created_at: nil,
      updated_at: nil
    )}
  end

  describe 'relations' do
    it 'belongs to a proyecto' do
      relation = described_class.reflect_on_association(:proyecto)
      expect(relation.macro).to eq :belongs_to
    end

    it 'has many disponibilidads' do
      relation = described_class.reflect_on_association(:disponibilidads)
      expect(relation.macro).to eq :has_many
    end

    it "should have many workers" do
      subject { described_class.new }
      assc = described_class.reflect_on_association(:workers)
      expect(assc.macro).to eq :has_and_belongs_to_many
    end
  end
end
