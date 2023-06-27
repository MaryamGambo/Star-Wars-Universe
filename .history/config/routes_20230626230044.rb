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

  resources :people, only: [:index, :show, :edit, :update, :destroy] do
    member do
      get 'show_association/:association', action: 'show_association', as: 'show_association'
    end
  end

  # Routes for association show pages
  get 'starships/:id', to: 'starships#show', as: 'starship'
  get 'vehicles/:id', to: 'vehicles#show', as: 'vehicle'
  get 'films/:id', to: 'films#show', as: 'film'
  get 'species/:id', to: 'species#show', as: 'species'
  get 'planets/:id', to: 'planets#show', as: 'planet'

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
