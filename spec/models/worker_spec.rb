require 'rails_helper'

RSpec.describe Worker, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attributes(
      id: nil,
      nombre: nil,
      created_at: nil,
      updated_at: nil
    )}
  end
end
