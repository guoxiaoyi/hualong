class AddEnNameToProduct < ActiveRecord::Migration
  def change
    add_column :products, :en_name, :string, limit: 100
    add_column :products, :jp_name, :string, limit: 100
    add_column :products, :ko_name, :string, limit: 100
  end
end
