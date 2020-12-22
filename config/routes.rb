Rails.application.routes.draw do
  resources :add_rating_to_movies
  resources :favorites
  resources :titles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
