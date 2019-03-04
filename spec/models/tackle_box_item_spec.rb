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

require 'rails_helper'

RSpec.describe TackleBoxItem, type: :model do
  subject { create(:tackle_box_item) }

  it { should be_valid }

  it { is_expected.to belong_to(:bait) }
  it { is_expected.to belong_to(:user) }
end
