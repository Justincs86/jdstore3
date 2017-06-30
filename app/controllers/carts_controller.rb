class CartsController < ApplicationController

  def clean
    current_cart.clean!
    redirect_to carts_path, warning: "Empty cart"
  end
  
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
      redirect_to carts_path
  end

end
