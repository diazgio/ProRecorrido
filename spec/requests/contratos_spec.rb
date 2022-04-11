# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Naming/VariableNumber
# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe 'Contratos', type: :request do
  describe 'GET /index' do
    let!(:proyecto) { FactoryBot.create(:proyecto) }
    let!(:contrato) do
      FactoryBot.create(:contrato,
                        proyecto_id: proyecto.id)
    end
    let!(:worker) { FactoryBot.create(:worker) }
    before do
      contrato.workers << worker
    end

    it 'returns http success' do
      get "/api/v1/proyectos/#{proyecto.id}/contratos"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    let!(:proyecto_1) { FactoryBot.create(:proyecto, nombre_empresa: 'Recorrido') }
    let!(:worker_1) { FactoryBot.create(:worker) }
    let!(:worker_2) { FactoryBot.create(:worker) }
    before do
      workers = []
      workers << worker_1.id
      workers << worker_2.id
      post "/api/v1/proyectos/#{proyecto_1.id}/contratos", params: {
        proyecto_id: proyecto_1.id,
        duration: 58,
        start_hour: [7, 7, 7, 7, 7, 7, 7],
        end_hour: [9, 9, 9, 9, 9, 9, 9],
        nombre_c: 'Contrato Primer Trimestre',
        num_sem: 5,
        workers_attributes: workers
      }
    end

    it 'returns  the nombre empresa' do
      expect(json['nombre_c']).to eq('Contrato Primer Trimestre')
    end

    it 'returns http success' do
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /destroy' do
    let!(:proyecto_1) { FactoryBot.create(:proyecto, nombre_empresa: 'Recorrido') }
    let!(:contrato) do
      FactoryBot.create(:contrato,
                        proyecto_id: proyecto_1.id)
    end
    before do
      delete "/api/v1/proyectos/#{proyecto_1.id}/contratos/#{contrato.id}"
    end
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Naming/VariableNumber
# rubocop:enable Layout/EmptyLineAfterMagicComment
