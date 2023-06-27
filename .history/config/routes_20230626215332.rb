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

  resources :people , only: [:index, :show] do
    member do
      get 'starships', to: 'people#show_starships'
      get 'films', to: 'people#show_films'
      get 'vehicles', to: 'people#show_vehicles'
    end
  end

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
