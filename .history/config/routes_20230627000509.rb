Rails.application.routes.draw do
  resources :species do
    resources :people, only: :index
  end

  resources :vehicles do
    resources :people, only: :index
  end

  resources :starships do
    resources :people, only: :index
  end

  resources :films do
    resources :people, only: :index
  end

  resources :planets do
    resources :people, only: :index
  end

  resources :people



  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
