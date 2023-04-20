Rails.application.routes.draw do
  get 'locations/new'
  get 'locations/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
  root 'locations#new'

  get '/dashboard', to: 'dashboard#index'
  get '/dashboard/:id', to: 'dashboard#show'
  # get 'articles', to: 'articles#index'  ## Example

  # Defines the root path route ("/")
  # root "articles#index"
end
