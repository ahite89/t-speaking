Rails.application.routes.draw do

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'categories#index'

  resources :categories, only: [:index, :show, :edit, :update] do
    resources :questions, only: [:new, :create, :edit, :update]
  end

  resources :questions, only: [:new, :show, :edit, :update, :destroy] do
    resources :answers, except: [:index, :show]
    resources :scores, only: [:index, :show]
  end

  resources :answers, only: [:edit, :update, :destroy]

  resources :chords, only: [:index]
end
