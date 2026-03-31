Rails.application.routes.draw do
  root "transactions#index"

  resources :transactions
  resources :categories
  resources :users
end
