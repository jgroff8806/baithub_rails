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

class TackleBoxItem < ApplicationRecord
  belongs_to :bait
  belongs_to :user

  default_scope { order(created_at: :desc) }
end
