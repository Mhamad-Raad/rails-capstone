Rails.application.routes.draw do
  devise_for :users
  get 'splash/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'splash#index'

  resources :groups, path: '/groups' do
    resources :entities, path: '/entities'
  end

end
