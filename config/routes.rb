Rails.application.routes.draw do
  resources :expenses
  resources :groups
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users, only: %i[new show create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
