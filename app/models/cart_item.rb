class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  has_many :order_items
end
