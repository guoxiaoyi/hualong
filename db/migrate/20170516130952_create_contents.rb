class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name, limit: 50
      t.string :email, limit: 50
      t.string :tel, limit: 30
      t.text :body

      t.timestamps
    end
  end
end
