Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  get 'dashboard', to: 'dashboard#index'
  # get 'articles', to: 'articles#index'  ## Example

  # Defines the root path route ("/")
  # root "articles#index"
end
