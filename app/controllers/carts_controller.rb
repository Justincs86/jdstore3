class CartsController < ApplicationController


  def clean
    current_cart.clean!
    redirect_to carts_path, warning: "Empty cart"
  end


end
