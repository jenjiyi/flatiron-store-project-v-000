class CartsController < ApplicationController
  before_action :is_authorized?, only: [:show, :checkout]


  def show
    @current_cart = Cart.find(params[:id])
  end

  def checkout
    @current_cart = Cart.find(params[:id])
    @current_cart.checkout
    current_user.delete_current_cart
    redirect_to cart_path(@current_cart), notice: "Checked out! Cart status: #{@current_cart.status}"
  end

  private
   def is_authorized?
    @cart = Cart.find(params[:id])
    if current_user != @cart.user && !user_signed_in? 
      redirect_to store_path, alert: "You can only view your own cart. Access denied."
    end
  end
end
