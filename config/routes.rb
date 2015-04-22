Rails.application.routes.draw do

  devise_for :users

  get 'tags/:tag', to: 'categories#show', as: :tag

  root 'categories#index'

  resources :categories, only: [:index, :show, :edit, :update] do
    resources :questions, only: [:new, :create, :edit, :update]
  end

  resources :questions, only: [:new, :show, :edit, :update, :destroy] do
    resources :answers, except: [:index, :show]
    resources :scores, only: [:index, :show]
  end

  resources :answers do
    member do
      put "like", to: "answers#upvote"
      put "dislike", to: "answers#downvote"
    end
  end


  resources :chords, only: [:index]
end
