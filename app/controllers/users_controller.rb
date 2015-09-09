class UsersController < ApplicationController

  ### CREATE ###
  def create
    @user = User.new User.get_hash(params)
    if @user.save
      # render json: @user.as_hash
      redirect_to @user
    else
      # render json: user.errors.messages
      render :new
    end
  end

  ### GET ###
  def index
    @users = User.all
    # render json: User.all
  end

  def show
    @user = User.find_by id: params[:id]
    # render json: user.as_hash
  end

  def products
    user = User.find_by id: params[:id]
    if user
      render json: user.products
    else
      render json: nil
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by id: params[:id]
  end

  ### UPDATE ###
  def update
    @user = User.find_by id: params[:id]
    if @user
      if @user.update_attributes User::get_hash(params)
        # render json: user.as_hash
        redirect_to @user
      else
        # render json: user.errors.messages
        render :edit
      end
    else
      # render json: {}
    end
  end

  ### REMOVE ###
  def destroy
    user = User.find_by id: params[:id]
    if user
      user.destroy
      render json: user.as_hash
    else
      render json: {}
    end
  end

end
