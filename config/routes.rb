Rails.application.routes.draw do
  devise_for :entrepreneurs
  devise_for :investors

  root 'markets#index'

  resources :markets, only: [:show, :index] do
    resources :groups, only: [:new, :create]
  end
  
  resources :groups, only: [:show] do
    resources :projects, only: [:create, :new]
    get :join, on: :member
  end
end
