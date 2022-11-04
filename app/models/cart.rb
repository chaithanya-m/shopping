class Cart < ApplicationRecord
	has_many :products, through: :cart_items
	has_many :cart_items
end
