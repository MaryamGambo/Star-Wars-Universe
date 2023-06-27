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
    get 'show_starships', on: :member
    get 'show_films', on: :member
    get 'show_vehicles', on: :member
  end

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
