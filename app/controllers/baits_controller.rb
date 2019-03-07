# frozen_string_literal: true

class BaitsController < ApplicationController
  def index
    @baits = Bait.all

    render json: JSON.pretty_generate(@baits.as_json), status: :ok
  end
end
