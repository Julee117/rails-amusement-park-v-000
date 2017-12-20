Rails.application.routes.draw do
  root "application#welcome"
  resources :users
  resources :attractions
  resources :rides
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
