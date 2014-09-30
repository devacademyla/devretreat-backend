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
  it 'GET show' do
    Serie.create(nombre: 'Bates Motel')
    get :show, id: 1
    expect(response.status).to eq 200
    json = JSON.parse(response.body)
    expect(json['nombre']).to eq 'Bates Motel'
  end
  it 'POST create' do
    post :create, nombre: 'Bates Motel'
    expect(response.status).to eq 201
    json = JSON.parse(response.body)
    expect(json['nombre']).to eq 'Bates Motel'
  end
end