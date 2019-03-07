# frozen_string_literal: true

class ActivityController < ApplicationController
  before_action :authenticate_user

  def index
    @catches = Catch.all.includes(:bait, :user)

    render json: JSON.pretty_generate(@catches.as_json), status: :ok
  end
end
