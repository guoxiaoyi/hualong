# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  name       :string(50)
#  email      :string(50)
#  tel        :string(30)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Content < ActiveRecord::Base
  validates :email, :tel, presence: true

end
