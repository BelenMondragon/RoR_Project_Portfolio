Rails.application.routes.draw do

  root "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :admin, only: [:index, :create, :update]
  get '/about_me', to: 'users#about_me'

    devise_scope :user do
      get "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
    end

    resources :skills
    resources :projects
  # Defines the root path route ("/")
end
