# frozen_string_literal: true

# == Schema Information
#
# Table name: catches
#
#  id         :bigint(8)        not null, primary key
#  species    :string(255)
#  weight     :decimal(10, )
#  length     :decimal(10, )
#  bait_id    :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :catch do
    species { 'species' }
    weight { 7 }
    length { 12.0 }
    bait_id { 1 }
    user_id { 1 }
  end
end
