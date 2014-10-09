class SeriesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    render json: Serie.all
  end
  def show
    render json: Serie.find(params[:id])
  end
end