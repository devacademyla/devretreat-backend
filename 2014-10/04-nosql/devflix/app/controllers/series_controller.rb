class SeriesController < ApplicationController
  def index
    render json: Serie.all
  end
  def show
    render json: Serie.find(params[:id])
  end
end