Rails.application.routes.draw do
  resources :lists do
    resources :items 
  end 

  resources :users, :only => [:new, :create]

  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"
  get '/auth/:provider/callback' => 'sessions#create'

  

  root 'lists#index'
end 
