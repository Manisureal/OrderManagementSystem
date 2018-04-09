class Order < ApplicationRecord
  has_many :order_lines
  has_many :products, through: :order_lines

  def total_price
    products.price * order_lines.quantity
  end

end
