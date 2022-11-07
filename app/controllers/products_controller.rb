class ProductsController < ApplicationController
  def index
    @products = Product.all
    @cart = Cart.last || Cart.create
    @cart_items = @cart.cart_items

    
    
  end
 
  def search
    # binding.break 
    @products = Product.where("productName LIKE ?", "%#{params[:search]}%")
    
    render 'index'
    # redirect_to products_path(@products)
  end
end
