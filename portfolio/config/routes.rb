Rails.application.routes.draw do


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "main#home"



  # Defines the root path route ("/")

  root 'home#index'
  get '/about_me', to: 'users#about_me'
  
  resources :skills 
  resources :projects

 # root "users#index"
  # get '/about_me', to: 'users#about_me'
  # resources :skills 
  # resources :projects

end
