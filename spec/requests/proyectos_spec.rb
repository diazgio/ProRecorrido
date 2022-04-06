require 'rails_helper'

RSpec.describe "Proyectos API", type: :request do
  describe "GET /index" do
    let!(:proyectos) { FactoryBot.create_list(:proyecto, 10) }
    before do
      get '/api/v1/proyectos'
    end
    
    it 'returns all proyectos' do
      get '/api/v1/proyectos'
      expect(json.size).to eq(10)
    end

    it "returns http success" do
      get "/api/v1/proyectos"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    let!(:proyecto_1) { FactoryBot.create(:proyecto, nombre_empresa: 'Recorrido') }
    before do
      post '/api/v1/proyectos', params: {proyecto: { nombre_empresa: proyecto_1.nombre_empresa }}
    end

    it 'returns the nombre empresa' do
      expect(json['nombre_empresa']).to eq(proyecto_1.nombre_empresa)
    end

    it "returns http success" do
      expect(response).to have_http_status(:created)
    end

    context 'with invalid parameters' do
      before do
        post '/api/v1/proyectos', params: { proyecto: { nombre_empresa: '' } }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT /update" do
    let!(:proyecto_1) { FactoryBot.create(:proyecto, nombre_empresa: 'Recorrido') }
    before do
      patch "/api/v1/proyectos/#{proyecto_1.id}", params: { proyecto: { nombre_empresa: 'Movistar' } }
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE /destroy" do
    let!(:proyecto_1) { FactoryBot.create(:proyecto, nombre_empresa: 'Giordano') }
    before do
      delete "/api/v1/proyectos/#{proyecto_1.id}"
    end
    it "returns status code 204" do
      expect(response).to have_http_status(204)
    end
  end

end
