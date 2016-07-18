class OrdersController < ApplicationController
  def show
    @order = @order = Order.find(params[:id])

  end
end
