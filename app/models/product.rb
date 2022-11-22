class Product < ApplicationRecord
	has_many :cart_items
	# has_many :carts
	has_many :order_items

	has_many :pictures, as: :imageable
end