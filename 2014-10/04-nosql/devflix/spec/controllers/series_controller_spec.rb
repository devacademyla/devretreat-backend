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
  describe 'GET show' do
    it 'GET show' do
      serie = Serie.create(nombre: 'The Following')
      get :show, id: serie._id
      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['nombre']).to eq serie.nombre
    end
  end
  describe 'POST create' do
    it 'created' do
      post :create, nombre: 'Bates Motel'
      expect(response.status).to eq 201
    end
  end
end