class FlatsController < ApplicationController

  def index
    @flats = Flat.all
    @flat = Flat.new
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flats_params)
    @flat.save
    redirect_to flats_path(@flats)
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
