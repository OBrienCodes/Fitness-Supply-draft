Rails.application.routes.draw do
  
  resources :lists, only: [:show, :destory]
  resources :reviews, only: [:index, :create, :destory]
  resources :workouts, only: [:index]
  resources :users, only: [:show, :create]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
