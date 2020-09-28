Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show]
end
