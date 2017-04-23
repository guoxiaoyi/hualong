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
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
