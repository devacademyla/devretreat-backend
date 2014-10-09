require 'rails_helper'
describe SeriesController do
  describe 'GET index' do
    it 'ok' do
      get :index
      expect(response.status).to eq 200
    end
  end
end