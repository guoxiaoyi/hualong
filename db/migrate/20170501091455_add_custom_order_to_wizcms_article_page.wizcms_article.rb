# This migration comes from wizcms_article (originally 20150819025423)
class AddCustomOrderToWizcmsArticlePage < ActiveRecord::Migration
  def change
    add_column :wizcms_article_pages, :custom_order, :integer
  end
end
