Rails.application.routes.draw do
  root to: "home", to: "home#menu"

  resources :shows, only: [:index, :show]
  resources :lists, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :destroy]

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

  get "/data", to: "users#data", as: "data"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
