class En::ProductsController < ApplicationController
  def index
    @product_categories = ProductCategory.all
    @content = Content.new
    if params[:cid]
      @products = Product.where(product_category_id: params[:cid])
    else
      @products= Product.all
    end
  end
  def show
    @product = Product.find(params[:id])
    @content = Content.new
  end
end
