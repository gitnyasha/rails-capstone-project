Rails.application.routes.draw do
  resources :externals
  resources :expenses
  resources :groups
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  root "sessions#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
