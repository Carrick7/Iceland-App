Rails.application.routes.draw do
  #Location Pages
  resources :locations do
    resources:comments, only: [:create]
  end
  resources:likes, only: [:create, :destroy]
  
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
 #HomePage
 root 'pages#home'
 #MapPage
 get 'map', to: 'pages#map'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
