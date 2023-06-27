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

  resources :people do
    collection do
      get 'search'
    end

    member do
      get 'show_association/:association', to: 'people#show_association', as: 'show_association'
    end
  end

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
