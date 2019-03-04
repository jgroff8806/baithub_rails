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

class Catch < ApplicationRecord
  belongs_to :bait
  belongs_to :user

  validates :species, presence: true

  validates :weight, :length,
            numericality: { greater_than: 0 },
            presence: true

  default_scope { order(created_at: :desc) }
end
