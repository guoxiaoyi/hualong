class AddEnTitleToProductCategory < ActiveRecord::Migration
  def change
    add_column :product_categories, :en_title, :string, limit: 100
    add_column :product_categories, :zh_title, :string, limit: 100
    add_column :product_categories, :jp_title, :string, limit: 100
    add_column :product_categories, :ko_title, :string, limit: 100
  end
end
