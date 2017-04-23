class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, limit: 100
      t.text :summary
      t.string :video, limit: 255
      t.integer :product_category_id
      t.text :inquiry

      t.timestamps
    end
  end
end
