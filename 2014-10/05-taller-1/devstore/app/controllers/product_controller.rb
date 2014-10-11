class ProductController < ApplicationController
  def index
    render json: Product.all
  end

  def show
  end
end
