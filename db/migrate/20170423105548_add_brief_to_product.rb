class AddBriefToProduct < ActiveRecord::Migration
  def change
    add_column :products, :brief, :string, limit: 255
  end
end
