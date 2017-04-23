# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  created_at :datetime
#  updated_at :datetime
#  language   :integer
#

class ProductCategory < ActiveRecord::Base
  has_many :products
  enum language: {zh: 0,en: 1}
end