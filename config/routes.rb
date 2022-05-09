Rails.application.routes.draw do
  resources :locations
  devise_for :users
 #HomePage
 root 'pages#home'
 #MapPage
 get 'map', to: 'pages#map'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
