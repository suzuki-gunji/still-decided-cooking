Rails.application.routes.draw do
  devise_for :users
  root to: 'decides#index'
  resources :cooks 
  resources :decides, only: [:index, :new, :create,]
end

