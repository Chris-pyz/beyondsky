Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bookings/:id/accept', to: 'bookings#accept'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :bookings, only: [:destroy]
  resources :spaceships do
    resources :bookings, except: [:destroy]
  end
end


