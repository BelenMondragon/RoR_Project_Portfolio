Rails.application.routes.draw do


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")

  root 'home#index'
  get '/about_me', to: 'users#about_me'

  devise_scope :user do
    get "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end
  
  resources :skills 
  resources :projects

 # root "users#index"
  # get '/about_me', to: 'users#about_me'
  # resources :skills 
  # resources :projects

end
