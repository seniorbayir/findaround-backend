class ProductsController < ApplicationController

  def create
    product = Product.new Product.get_hash(params)
    if product.save
      render json: product.as_hash
    else
      render json: product.errors.messages
    end
  end

  def index
    render json: Product.all
  end

  def show
    product = Product.find_by id: params[:id]
    render json: product.as_hash
  end

  def update
    product = Product.find_by id: params[:id]
    if product
      if product.update_attributes product::get_hash(params)
        render json: product.as_hash
      else
        render json: product.errors.messages
      end
    else
      render json: {}
    end
  end

  def destroy
    product = Product.find_by id: params[:id]
    if product
      product.destroy
      render json: product.as_hash
    else
      render json: {}
    end
  end

end
