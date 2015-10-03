class CompaniesController < ApplicationController
  helper CompaniesHelper
  ### CREATE ###
  def create
    company = Company.new Company.get_hash(params)
    company.user = User.find(params[:user_id])
    if company.save
      render json: company.as_hash
    else
      render json: company.errors.messages
    end
  end

  ### GET ###
  def index
    render json: Company.all
  end

  def show
    company = CompaniesHelper::get_company params[:id]
    render json: company
  end

  ### UPDATE ###
  def update
    company = Company.find_by id: params[:id]
    if company
      if company.update_attributes Veneu::get_hash(params)
        render json: company.as_hash
      else
        render json: company.errors.messages
      end
    else
      render json: {}
    end
  end

  ### REMOVE ###
  def destroy
    company = Company.find_by id: params[:id]
    if company
      company.destroy
      render json: company.as_hash
    else
      render json: {}
    end
  end

end
