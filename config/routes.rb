Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts, only: [ :index, :new, :create ]

  # Defines the root path route ("/")
  root "posts#index"
end
