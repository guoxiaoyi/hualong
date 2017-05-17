class En::ProductsController < ApplicationController
  def index
    @product_categories = ProductCategory.all
    @content = Content.new
  end
  def show
    @content = Content.new
  end
end
