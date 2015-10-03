class ProductsController < ApplicationController

  def show
    @product = ProductsHelper::get_product params[:id]
    @company = CompaniesHelper::get_company 1
  end

end
