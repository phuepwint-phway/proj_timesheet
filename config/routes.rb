Rails.application.routes.draw do
  # Defines the root path route ("/")
  root 'consumers#index'

  devise_for :consumers, controllers: {
    registrations: 'consumers/registrations',
    sessions: 'consumers/sessions',
    passwords: 'consumers/passwords',
    confirmations: 'consumer/confirmations',
    unlocks: 'consumer/unlocks'
    # omniauth_callbacks: 'consumer/omniauth_callbacks'
  }

  # Custom routes for additional consumer actions
  resources :consumers
   
    
  resources :clock_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check



end
