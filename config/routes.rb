Rails.application.routes.draw do
  devise_for :users
  root "users#show"

  resources :users
  resources :records do
    collection do
      get 'history'
    end
  end
  resources :schedules
end
