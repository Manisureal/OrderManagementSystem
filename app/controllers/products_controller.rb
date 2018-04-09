class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def add_to_order
    # if session[:order_id]
    # order = Order.create!(status: "pending")
    order = Order.create!(status: "pending")
    product = Product.find(params[:id])
    order.order_lines.create(product_id: product.id, quantity: 1)
    redirect_to order_path


  end
end
