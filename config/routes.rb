Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :points_transactions
  resources :houses
  resources :energy_readings
  resources :purchases
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
