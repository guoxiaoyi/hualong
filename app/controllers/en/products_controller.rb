class En::ProductsController < ApplicationController
  def index
    @product_categories = ProductCategory.all
  end
  def show

  end
end
