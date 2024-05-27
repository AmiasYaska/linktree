Rails.application.routes.draw do

  resources :trees
  get 'home/index'

  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Defines the root path route ("/")
   root "home#index"

   devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
