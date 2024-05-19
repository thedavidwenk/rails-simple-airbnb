class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save!

    redirect_to flats_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy!

    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end 

  def update
    @flat = Flat.find(params[:id])
    
    if @flat.update(flat_params)
      redirect_to @flat
    else
      render :edit, status: :unprocessable_entity
    end
  end 

  def show 
    @flat = Flat.find(params[:id])
  end

  private 
    # Only allow a list of trusted parameters through.
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
