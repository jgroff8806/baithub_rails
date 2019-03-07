# frozen_string_literal: true

Rails.application.routes.draw do
  defaults format: :json do
    root 'baits#index'

    resources :baits, only: [:index] do
      resources :catches, only: %i[index create]
    end

    resources :tackle_box_items, only: %i[index create], path: 'tackle-box-items'

    get 'activity', to: 'activity#index'

    resources :users, only: [:create]

    resource :session, only: %i[create destroy]
  end
end
