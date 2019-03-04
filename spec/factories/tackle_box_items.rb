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

FactoryBot.define do
  factory :tackle_box_item do
    bait_id { 1 }
    user_id { 1 }
  end
end
