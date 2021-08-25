Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # /restaurants/...
  resources :restaurants do

    # .../reviews/...
    resources :reviews, only: [ :new, :create ]

    collection do

      # .../top
      get :top

      # .../bottom
      get :bottom
    end

    member do

      # .../chef
      get :chef
    end
  end

  resources :reviews, only: [ :destroy ]
end
