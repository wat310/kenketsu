Rails.application.routes.draw do
  devise_for :users
  # root "users#show"
  root "users#show"
  resources :users do
    resources :records
  end
end
