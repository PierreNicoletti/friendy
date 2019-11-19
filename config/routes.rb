Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  resources :friends, except: [:show] do
    resources :bookings, only: [:new, :create]
  end
  devise_for :users
  get '/dashboard', to: 'users#show', as: :dashboard
  root to: 'friends#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
