class UsersController < ApplicationController

  ### CREATE ###
  def create
    @user = User.new User.get_hash(params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.messages
    end
  end

  ### GET ###
  def index
    render json: User.all
  end

  def show
    @user = User.find_by id: params[:id]
    render json: @user
  end

  def products
    @user = User.find_by id: params[:id]
    if @user
      render json: @user.products
    else
      render json: nil
    end
  end

  ### UPDATE ###
  def update
    @user = User.find_by id: params[:id]
    if @user
      if @user.update_attributes User::get_hash(params)
        render json: @user
      else
        render json: @user.errors.messages
      end
    else
      render json: {}
    end
  end

  ### REMOVE ###
  def destroy
    @user = User.find_by id: params[:id]
    if @user
      @user.destroy
      render json: @user
    else
      render json: {}
    end
  end

end
