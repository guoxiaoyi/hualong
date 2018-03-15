class AddTitleToContent < ActiveRecord::Migration
  def change
    add_column :contents, :title, :string, limit: 60
  end
end
