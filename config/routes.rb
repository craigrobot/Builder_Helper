Rails.application.routes.draw do
  devise_for :users

  root to: 'lists#index'

  resources :lists , only: [:index, :new, :create, :show, :destroy] do
    resources :stores, only: [:index]
    resources :item_lists, only: [:new, :create]
  end
  resources :item_lists, only: [:destroy]
end
