class ReviewsController < ApplicationController

  ### CREATE ###
  def create
    review = Review.new Review.get_hash(params)
    review.user = User.find(params[:user_id])
    review.product = Product.find(params[:product_id])
    if review.save
      render json: review.as_hash
    else
      render json: review.errors.messages
    end
  end

  ### GET ###
  def index
    render json: Review.all
  end

  def show
    review = Review.find_by id: params[:id]
    render json: review.as_hash
  end

  ### UPDATE ###
  def update
    review = Review.find_by id: params[:id]
    if review
      if review.update_attributes Veneu::get_hash(params)
        render json: review.as_hash
      else
        render json: review.errors.messages
      end
    else
      render json: {}
    end
  end

  ### REMOVE ###
  def destroy
    review = Review.find_by id: params[:id]
    if review
      review.destroy
      render json: review.as_hash
    else
      render json: {}
    end
  end

end
