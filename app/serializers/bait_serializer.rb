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

class BaitSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image, :created_at, :updated_at
end
