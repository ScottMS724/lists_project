Rails.application.routes.draw do
  resources :lists do
    resources :items 
  end 

  
  get 'items/create'
  

  root 'lists#index'
end 
