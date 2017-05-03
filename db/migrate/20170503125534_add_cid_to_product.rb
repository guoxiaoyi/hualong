class AddCidToProduct < ActiveRecord::Migration
  def change
    add_column :products, :cid, :integer
  end
end
