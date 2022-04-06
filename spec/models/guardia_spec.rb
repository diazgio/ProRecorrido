require 'rails_helper'

RSpec.describe Guardia, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attributes(
      id: nil,
      hora: nil,
      fecha: nil,
      proyecto_id: nil,
      created_at: nil,
      updated_at: nil
    )}
  end
end
