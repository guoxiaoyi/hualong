class AddCidToProductCategory < ActiveRecord::Migration
  def change
    add_column :product_categories, :cid, :integer
  end
end
