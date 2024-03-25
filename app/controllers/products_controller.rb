class ProductsController < ApplicationController

  def index
    @products = Product.all
    @active_products = Product.where(active: true).order(created_at: :asc)
  end

end