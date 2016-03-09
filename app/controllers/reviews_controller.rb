class ReviewsController < ApplicationController
before_action :set_cardealer

  def index
    render json:{
      reviews: @cardealer.reviews.order(id: :desc)
    }
  end

  def create
    review = Review.new(review_params)
    review.cardealer = @cardealer

    if review.save
      render json: {review: review}
    else
      render json: {
        message: "Review could not be created",
        errors: review.errors
      }
    end
  end

  def update
    review = @cardealer.reviews.find(params[:id])

    if review.update(review_params)
      render json:{review: review}
    else
      render json: {
        message: "Review could not be edited.",
        errors: review.errors
      }
    end
  end

  def destroy
    review = @cardealer.reviews.find(params[:id])

    if review.destroy
      render json: { review: nil }
    else
      render json: { message: "Review could not be destroyed."}
    end
  end

  private

  def set_cardealer
    @cardealer = Cardealer.find(params[:cardealer_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :rating, :cardealer_id)
  end

end
