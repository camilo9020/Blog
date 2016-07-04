Rails.application.routes.draw do
 

  resources :users
  resources :users, only: [:new, :create]
  resources :posts
  root 'posts#index'


end
