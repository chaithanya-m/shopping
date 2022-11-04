class ProductsController < ApplicationController
  def index
    @products = Product.all
    
  end
 
  def search
    # binding.break 
    @products = Product.where("productName LIKE ?", "%#{params[:search]}%")
    
    render 'index'
    # redirect_to products_path(@products)
  end
end
