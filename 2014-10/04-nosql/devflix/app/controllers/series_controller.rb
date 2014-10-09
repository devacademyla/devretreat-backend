class SeriesController < ApplicationController
  def index
    render json: Serie.all
  end
end