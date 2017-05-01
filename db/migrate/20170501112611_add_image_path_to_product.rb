class AddImagePathToProduct < ActiveRecord::Migration
  def change
    add_column :products, :image_path, :string, limit: 255

  end
end
