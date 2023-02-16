Rails.application.routes.draw do
  devise_for :users
  get 'splash/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'splash#index'

  # Defines the index and show routes for the Groups resource
  resources :groups, only: [:index, :new, :create]

end
