class CompaniesController < ApplicationController

  def show
    @company = CompaniesHelper::get_company params[:id]
  end

end
