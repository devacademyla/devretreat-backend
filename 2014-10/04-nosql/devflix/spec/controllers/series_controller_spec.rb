require 'rails_helper'
describe SeriesController do
  describe 'GET index' do
    it 'ok' do
      get :index
      expect(response.status).to eq 200
    end
    it 'render json' do
      Serie.create(nombre: 'Bates Motel')
      get :index
      expect(response.status).to eq 200
      json = JSON.parse(response.body)
      expect(json.size).to eq 1
    end
  end
end