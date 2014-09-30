class SeriesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    @series = Serie.all
    render json: @series
  end
  def show
    @serie = Serie.find(params[:id])
    render json: @serie
  end
  def create
    @serie = Serie.new(nombre: params[:nombre], descripcion: params[:descripcion], en_transmision: params[:en_transmision])
    if @serie.save
      render json: @serie, status: :created
    else
      render json: @serie.errors
    end
  end
  def update
    @serie = Serie.find(params[:id])
    if @serie.update(nombre: params[:nombre], descripcion: params[:descripcion], en_transmision: params[:en_transmision])
      render json: @serie
    else
      render json: @serie.errors
    end
  end
  def destroy
    @serie = Serie.find(params[:id])
    @serie.delete
    render json: Serie.all
  end
end