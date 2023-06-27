Rails.application.routes.draw do
  resources :species
  resources :vehicles
  resources :films
  resources :starships
  resources :planets
  resources :people
  get '/about', to: 'about#index', as: 'about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "people#index"
  resources :species do
    resources :people, only: :index
  end

  resources :planet do
    resources :people, only: :index
  end

end
