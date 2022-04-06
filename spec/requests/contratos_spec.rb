require 'rails_helper'

RSpec.describe "Contratos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/contratos/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/contratos/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/contratos/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/contratos/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
