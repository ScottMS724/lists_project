Rails.application.routes.draw do
  resources :lists do
    resources :items do 
      member do 
        get :edit_join
        put :update_join 
      end 
    end 
  end 

  resources :users, :only => [:new, :create]

  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"
  get '/auth/:provider/callback' => 'sessions#create'

  

  root 'lists#index'
end 
