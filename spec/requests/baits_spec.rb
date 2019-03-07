# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Baits', type: :request do
  let!(:bait) do
    create(
      :bait,
      name: 'bait',
      category: 'category',
      image: 'image'
    )
  end

  describe 'GET #index' do
    context 'when navigating to /baits' do
      it 'returns success and returns all baits' do
        get '/baits'

        expect(response.status).to eq(200)
      end
    end
  end
end
