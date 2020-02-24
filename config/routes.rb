Rails.application.routes.draw do
  resources :lists do
    resources :items 
  end 

  resources :users, :only => [:new, :create] 

  
  get 'items/create'
  

  root 'lists#index'
end 
