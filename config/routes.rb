Rails.application.routes.draw do
  devise_for :users
  # root "users#show"
  root "users#show"
  resources :users do
    member do
      get :mypage
      get :record
      get :achievement
    end
  end
end
