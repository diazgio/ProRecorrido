require 'rails_helper'

RSpec.describe Disponibilidad, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attributes(
      id: nil,
      hora: nil,
      fecha: nil,
      workers_id: nil,
      created_at: nil,
      updated_at: nil
    )}
  end
end
