class CardealersController < ApplicationController

  def index
    render json:{
      cardealers: Cardealer.order(id: :desc)
    }
  end

  def show
    cardealer = Cardealer.find(params[:id])
    render json: {
  	  cardealer: cardealer,
      reviews: cardealer.reviews
    }
  end

  def create
    if cardealer = Cardealer.create(cardealer_params)
      render json: { cardealer: cardealer }
    else
      render json: {
        message: "Object could not be created",
        errors: cardealer.errors
      }
    end
  end

  def update
    cardealer = Cardealer.find(params[:id])

    if cardealer.update(cardealer_params)
      render json: { cardealer: cardealer }
    else
      render json: {
        message:"Object could not be edited",
        errors: cardealer.errors
      }
    end
  end

  def destroy
    cardealer = Cardealer.find(params[:id])

    if cardealer.destroy
      render json: { cardealer: nil }
    else
      render json: { message: "Object could not be destroyed" }
    end
  end

  private

  def cardealer_params
    params.require(:cardealer).permit(:company_name, :brand, :brand, :location, :year)
  end

end
