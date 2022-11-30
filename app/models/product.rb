class Product < ApplicationRecord
	has_many :cart_items
	# has_many :carts
	has_many :order_items

	has_one :picture, as: :imageable

	def name
    productName
  end
  

end