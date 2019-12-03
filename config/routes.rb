Rails.application.routes.draw do
  devise_for :users
  root "users#show"

  resources :users
  resources :records do
    collection do
      get 'history'
      get 'select_year', defaults: { format: 'json' }
    end
  end
  resources :schedules
end
