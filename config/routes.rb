Rails.application.routes.draw do
  get 'sample_projects/index'
  get 'sample_projects/show'
  devise_for :users

  root to: 'pages#home'

  resources :lists , only: [:index, :new, :create, :show, :destroy] do
    resources :stores, only: [:index]
    resources :item_lists, only: [:new, :create]
  end
  resources :item_lists, only: [:destroy]

  resources :sample_projects, only: [:index, :show]
end
