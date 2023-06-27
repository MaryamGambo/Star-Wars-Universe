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

  resources :people do
    resources :starships, only: :index
    resources :vehicles, only: :index
    resources :films, only: :index
  end

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
