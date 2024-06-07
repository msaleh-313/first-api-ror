class Api::V1::ProductsController < ApplicationController
  def index
    @products=Product.all
    render json: @products, status:200
  end

  def show
    @product=Product.find_by(id: params[:id])
    if @product
      render json: @product ,status:200
    else
      render json: {error: "Product not found"},status:404
    end
  end

  def create
    @product=Product.new(prod_params)
    if @product.save
      render json: @product, status:201
    else
      render json:{error: "Product not created",messages: @product.errors.full_messages } ,status: 422
    end
  end

  private
  def prod_params
    params.require(:product).permit(:name,:brand,:price)
  end
end
