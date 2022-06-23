Rails.application.routes.draw do
  #get 'sessions/new'
  resources :reservations
  resources :profiles
  resources :equipment
  resources :users
  resources :roles
  resources :shoes
  resources :bowling_balls
  resources :tracks

  root to: 'static#index'

 get    '/login',   to: 'sessions#new'
 post   '/login',   to: 'sessions#create'

 get     '/logout',  to: 'sessions#destroy'
delete  '/logout',  to: 'sessions#destroy'

get    '/feed',   to: 'static#feed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
