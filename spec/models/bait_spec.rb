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

require 'rails_helper'

RSpec.describe Bait, type: :model do
  subject { create(:bait) }

  it { should be_valid }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:category) }
  it { is_expected.to validate_presence_of(:image) }
end
