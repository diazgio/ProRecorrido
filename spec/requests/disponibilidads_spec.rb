# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe 'Disponibilidads', type: :request do
  describe 'GET /index' do
    let!(:proyecto) { FactoryBot.create(:proyecto) }
    let!(:contrato) do
      FactoryBot.create(:contrato,
                        proyecto_id: proyecto.id)
    end
    let!(:worker) { FactoryBot.create(:worker) }
    let!(:disponibilidad) do
      FactoryBot.create(:disponibilidad,
                        hora: 7,
                        fecha: 'monday',
                        worker_id: worker.id,
                        contrato_id: contrato.id,
                        valor: true,
                        semana: 18,
                        year: 2022,
                        confirmed: true)
    end
    before do
      contrato.workers << worker
    end

    it 'returns http success' do
      get "/api/v1/proyectos/#{proyecto.id}/contratos/#{contrato.id}/disponibilidads"
      expect(response).to have_http_status(:success)
    end
  end
end
# rubocop:enable Layout/EmptyLineAfterMagicComment
# rubocop:enable Metrics/BlockLength
