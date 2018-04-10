class Order < ApplicationRecord
  has_many :order_lines
  has_many :products, through: :order_lines

  def total_price
    order_lines.map { |o| o.product.price * o.quantity }.sum
    # products.price * order_lines.quantity
  end

end
