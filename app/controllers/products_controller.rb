class ProductsController < ApplicationController
  def index
    @products = Product.order(:title).to_a
  end

  def add_to_order
    if Order.current_scope.nil?
      order = Order.create(status: "pending")
      order.current_scope = order.id
    else
      order = Order.current_scope
      # order = Order.create(status: "pending")
    end
    product = Product.find(params[:id])
    # order = Order.create(status: "pending")
    order.order_lines.create!(product_id: product.id, quantity: 1)
    redirect_to order_path
  end
end
