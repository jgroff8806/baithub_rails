# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }

  has_many :tackle_box_items, dependent: :destroy
  has_many :catches, dependent: :destroy

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    user&.authenticate(password)
  end
end
