Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :accounts
    resources :budgets
    resources :categories
    resources :metrics
    resources :sections
    resources :transactions

    root to: "accounts#index"
  end

  resources :accounts
  resources :budgets
  resources :metrics
  resources :transactions
  resources :wallets

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "wallets#index"
end
