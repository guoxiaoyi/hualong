# == Schema Information
#
# Table name: managers
#
#  id              :integer          not null, primary key
#  name            :string(50)
#  email           :string(100)
#  password_digest :string(100)
#  supper          :boolean          default(FALSE)
#  disabled        :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class Manager < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email

  include OmniAuth::Identity::SecurePassword
  has_secure_password

  def self.find_by_auth_key(key)
    where(email: key, disabled: false ).first
  end

end
