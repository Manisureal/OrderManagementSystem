class OrdersController < ApplicationController

  def show
    # total_price
    @order_lines = current_order.order_lines
    # @order = Order.find(params[:id])
    # @order = Order.where(params[:id] => session[:cart_id]).first
  end
end
