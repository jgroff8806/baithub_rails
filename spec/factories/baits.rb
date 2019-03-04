# frozen_string_literal: true

# == Schema Information
#
# Table name: baits
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  category   :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :bait do
    name { 'name' }
    category { 'category' }
    image { 'image' }
  end
end
