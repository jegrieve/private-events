Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]

  root "events#index"
end
