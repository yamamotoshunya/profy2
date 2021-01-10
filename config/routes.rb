Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
   resources :questions, only: [:create, :show]
   resources :answers, only: [:new, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
