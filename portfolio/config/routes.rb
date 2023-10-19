Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  get '/about_me', to: 'users#about_me'
  resources :skills 
  resources :projects
end
