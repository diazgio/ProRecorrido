# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Naming/VariableNumber
# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe 'Workers API', type: :request do
  describe 'GET /index' do
    let!(:workers) { FactoryBot.create_list(:worker, 10) }
    before do
      get '/api/v1/workers'
    end

    it 'returns all workers' do
      get '/api/v1/workers'
      expect(json.size).to eq(10)
    end

    it 'returns http success' do
      get '/api/v1/workers'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    let!(:worker_1) { FactoryBot.create(:worker, nombre: 'Giordano') }
    before do
      post '/api/v1/workers', params: { worker: { nombre: worker_1.nombre } }
    end

    it 'returns the nombre' do
      expect(json['nombre']).to eq(worker_1.nombre)
    end

    it 'returns http success' do
      expect(response).to have_http_status(:created)
    end

    context 'with invalid parameters' do
      before do
        post '/api/v1/workers', params: { worker: { nombre: '' } }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PUT /update' do
    let!(:worker_1) { FactoryBot.create(:worker, nombre: 'Giordano') }
    before do
      patch "/api/v1/workers/#{worker_1.id}", params: { worker: { nombre: 'Mario' } }
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DELETE /destroy' do
    let!(:worker_1) { FactoryBot.create(:worker, nombre: 'Giordano') }
    before do
      delete "/api/v1/workers/#{worker_1.id}"
    end
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Naming/VariableNumber
# rubocop:enable Layout/EmptyLineAfterMagicComment
