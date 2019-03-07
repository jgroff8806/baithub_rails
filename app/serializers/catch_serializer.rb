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

class CatchSerializer < ActiveModel::Serializer
  attributes :id, :species, :weight, :length, :created_at, :updated_at

  belongs_to :bait
  belongs_to :user
end
