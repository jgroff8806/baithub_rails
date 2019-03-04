# frozen_string_literal: true

class BaitsController < ApplicationController
  def index
    @baits = Bait.all
  end
end
