require 'rails_helper'

RSpec.describe ProductController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      product = Product.create(name: 'Apple', price: 12)
      get :show, id: product._id
      expect(response).to have_http_status(:success)
    end
  end

end
