Rails.application.routes.draw do
  devise_for :users
  # root "users#show"
  root "users#index"
  resources :users
end
