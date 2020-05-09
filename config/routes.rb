Rails.application.routes.draw do
  root "courses#index"
  get "courses/new", to: "courses#new"
  get "about", to: "pages#about"
  resources :students, except: [:destroy]
  # resources :courses, only: [:new, :index, :create]
  # sessions routes
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
