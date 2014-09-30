class SeriesController < ApplicationController
  def index
    @series = Serie.all
    render json: @series
  end
  def show
    @serie = Serie.find(params[:id])
    render json: @serie
  end
end