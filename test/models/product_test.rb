# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string(100)
#  summary             :text
#  video               :string(255)
#  product_category_id :integer
#  inquiry             :text
#  created_at          :datetime
#  updated_at          :datetime
#  brief               :string(255)
#  en_name             :string(100)
#  jp_name             :string(100)
#  ko_name             :string(100)
#  image_path          :string(255)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
