require 'rails_helper'
describe SeriesController do
  it 'GET index' do
    Serie.create(nombre: 'Bates Motel')
    Serie.create(nombre: 'The Following')
    get :index
    expect(response.status).to eq 200
    json = JSON.parse(response.body)
    expect(json.length).to eq 2
  end
end