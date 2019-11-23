Rails.application.routes.draw do
  resources :friends do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:destroy, :update]
  devise_for :users
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  root to: 'friends#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
