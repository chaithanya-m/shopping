class OrderItem < ApplicationRecord
  belongs_to :product
  # belongs_to :cart_item
  belongs_to :order,:dependent => :destroy
end
