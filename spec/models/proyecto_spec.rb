require 'rails_helper'

RSpec.describe Proyecto, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attributes(
      id: nil,
      nombre_empresa: nil,
      created_at: nil,
      updated_at: nil
    )}
  end
end
