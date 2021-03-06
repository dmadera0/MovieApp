Rails.application.routes.draw do
  resources :favorites, only: [:index, :show, :create]
  resources :movie, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
