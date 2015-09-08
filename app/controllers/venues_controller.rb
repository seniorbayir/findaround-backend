class VenuesController < ApplicationController

  ### CREATE ###
  def create
    venue = Venue.new Venue.get_hash(params)
    venue.user = User.find(params[:user_id])
    if venue.save
      render json: venue.as_hash
    else
      render json: venue.errors.messages
    end
  end

  ### GET ###
  def index
    render json: Venue.all
  end

  def show
    venue = Venue.find_by id: params[:id]
    render json: venue.as_hash
  end

  ### UPDATE ###
  def update
    venue = Venue.find_by id: params[:id]
    if venue
      if venue.update_attributes Veneu::get_hash(params)
        render json: venue.as_hash
      else
        render json: venue.errors.messages
      end
    else
      render json: {}
    end
  end

  ### REMOVE ###
  def destroy
    venue = Venue.find_by id: params[:id]
    if venue
      venue.destroy
      render json: venue.as_hash
    else
      render json: {}
    end
  end

end
