# frozen_string_literal: true

# == Schema Information
#
# Table name: tackle_box_items
#
#  id         :bigint(8)        not null, primary key
#  bait_id    :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TackleBoxItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at

  belongs_to :bait
  belongs_to :user
end
