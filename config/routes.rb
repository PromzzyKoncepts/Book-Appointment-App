Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'private/test'

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :new, :create, :show, :destroy]
      resources :reservations, only: [:index, :show, :create, :new, :destroy]
      resources :users, only: [:index, :create]
      post "user/login", to: 'users#login'
    end
  end
end
