require 'rails_helper'
describe SeriesController do
  before do
    Serie.delete_all
  end
  describe 'GET index' do
    it 'ok' do
      get :index
      expect(response).to have_http_status(:ok)
    end
    it 'render json' do
      Serie.create(nombre: 'Bates Motel')
      get :index
      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json.size).to eq 1
    end
  end
end