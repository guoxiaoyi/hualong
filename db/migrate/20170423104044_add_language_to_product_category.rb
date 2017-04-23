class AddLanguageToProductCategory < ActiveRecord::Migration
  def change
    add_column :product_categories, :language, :integer
  end
end
