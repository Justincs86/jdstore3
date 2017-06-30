class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    redirect_to :back, notice: "Add to cart"
  end
  

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end


end
