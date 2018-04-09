class OrderLine < ApplicationRecord
  belongs_to :order, :product
end
