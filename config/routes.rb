Rails.application.routes.draw do
  # devise_for :users
  namespace :v1 do
    resources :contacts
    resources :sessions, only: %i[create destroy]
    resources :users, only: [:create]
  end
end
