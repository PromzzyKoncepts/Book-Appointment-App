Rails.application.routes.draw do
  get 'private/test'

  # root "articles#index"

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index,:show, :create ,:new,:destroy, :update]
      resources :users, only: [:index, :create]
      post "user/login", to: 'users#login'
    end
  end
end
