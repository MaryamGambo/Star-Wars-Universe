Rails.application.routes.draw do
  resources :species do
    resources :people, only: :index
  end

  resources :vehicles
  resources :films
  resources :starships
  resources :planets do
    resources :people, only: :index
  end

  resources :people

  get '/about', to: 'about#index', as: 'about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define the root path route ("/")
  root "people#index"
end
