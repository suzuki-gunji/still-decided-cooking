Rails.application.routes.draw do
  root to: 'decides#index'
  resources :cooks 
  resources :decides, only: [:index, :new, :create,]
end

