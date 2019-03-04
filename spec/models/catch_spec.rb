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

require 'rails_helper'

RSpec.describe Catch, type: :model do
  subject { create(:catch) }

  it { should be_valid }

  it { is_expected.to validate_presence_of(:species) }
  it { is_expected.to validate_presence_of(:weight) }
  it { is_expected.to validate_presence_of(:length) }
  it { is_expected.to belong_to(:bait) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_numericality_of(:weight) }
  it { is_expected.to validate_numericality_of(:length) }
end
