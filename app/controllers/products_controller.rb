class ProductsController < ApplicationController
  def index
    @products = Product.order(:title).to_a
    # @order_line = current_order.order_lines.new
  end

  def add_to_order
    if session[:order_id].blank?
      order = Order.create(status: "pending")
      session[:order_id] = order.id
    else
      order = Order.find(session[:order_id])
    end
    product = Product.find(params[:id])
    order.order_lines.create(order_id: order.id, product_id: product.id, quantity: 1)
    redirect_to order_path
  # end
  end

end
