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

  resources :people , only: [:index, :show, :edit, :update, :destroy] do
    member do

      get 'show_association/:association', action: 'show_association', as: 'show_association'
    end
  end

  get '/about', to: 'about#index', as: 'about'

  root "people#index"
end
