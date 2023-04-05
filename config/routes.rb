Rails.application.routes.draw do
  get 'private/test'
  devise_for :users, 
    path: '', 
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }

  # root "articles#index"

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :cars, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index,:show, :create ,:new,:destroy, :update]
      resources :users, only: [:index, :create]
    end
  end
end
