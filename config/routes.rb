Rails.application.routes.draw do
  get 'private/test'

  # root "articles#index"

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :new, :create, :show, :destroy]
      resources :reservations, only: [:index,:show, :create, :new, :destroy, :update]
      resources :users, only: [:index, :create]
    end
  end
end
